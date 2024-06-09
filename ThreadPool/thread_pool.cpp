#include "thread_pool.h"

ThreadPool::ThreadPool(size_t min_threads, size_t max_threads) 
    : stop(false), min_threads(min_threads), max_threads(max_threads), current_threads(min_threads), idle_threads(0) {
    for(size_t i = 0; i < min_threads; ++i) {
        workers.emplace_back([this] { worker_thread(); });
    }
}

void ThreadPool::worker_thread() {
    while(!stop) {
        std::function<void()> task;
        {
            std::unique_lock<std::mutex> lock(queue_mutex);
            condition.wait(lock, [this]{ return stop || !tasks.empty(); });

            if(stop && tasks.empty())
                return;

            task = std::move(tasks.front());
            tasks.pop();
        }

        idle_threads--;
        task();
        idle_threads++;
    }
}

void ThreadPool::adjust_thread_count() {
    if(tasks.size() > current_threads && current_threads < max_threads) {
        workers.emplace_back([this] { worker_thread(); });
        current_threads++;
    } else if(idle_threads > min_threads && current_threads > min_threads) {
        current_threads--;
        stop = true;
        condition.notify_all();
        for(auto& worker : workers) {
            if(worker.joinable()) {
                worker.join();
            }
        }
        stop = false;
        workers.clear();
        for(size_t i = 0; i < current_threads; ++i) {
            workers.emplace_back([this] { worker_thread(); });
        }
    }
}

ThreadPool::~ThreadPool() {
    stop = true;
    condition.notify_all();
    for(std::thread &worker: workers) {
        if(worker.joinable()) {
            worker.join();
        }
    }
}

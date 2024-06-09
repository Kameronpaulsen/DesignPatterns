#include <iostream>
#include "thread_pool.h"

void printHello(int n) {
    std::cout << "Hello from thread " << n << std::endl;
}

int main() {
    ThreadPool pool(4, 8);

    for (int i = 0; i < 16; ++i) {
        pool.enqueue(printHello, i);
    }

    std::this_thread::sleep_for(std::chrono::seconds(2));
    return 0;
}

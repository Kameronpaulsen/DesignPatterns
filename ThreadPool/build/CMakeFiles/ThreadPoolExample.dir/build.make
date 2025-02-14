# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kameron/repos/design-patterns/ThreadPool

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kameron/repos/design-patterns/ThreadPool/build

# Include any dependencies generated for this target.
include CMakeFiles/ThreadPoolExample.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ThreadPoolExample.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ThreadPoolExample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ThreadPoolExample.dir/flags.make

CMakeFiles/ThreadPoolExample.dir/main.cpp.o: CMakeFiles/ThreadPoolExample.dir/flags.make
CMakeFiles/ThreadPoolExample.dir/main.cpp.o: ../main.cpp
CMakeFiles/ThreadPoolExample.dir/main.cpp.o: CMakeFiles/ThreadPoolExample.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kameron/repos/design-patterns/ThreadPool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ThreadPoolExample.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ThreadPoolExample.dir/main.cpp.o -MF CMakeFiles/ThreadPoolExample.dir/main.cpp.o.d -o CMakeFiles/ThreadPoolExample.dir/main.cpp.o -c /home/kameron/repos/design-patterns/ThreadPool/main.cpp

CMakeFiles/ThreadPoolExample.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ThreadPoolExample.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kameron/repos/design-patterns/ThreadPool/main.cpp > CMakeFiles/ThreadPoolExample.dir/main.cpp.i

CMakeFiles/ThreadPoolExample.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ThreadPoolExample.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kameron/repos/design-patterns/ThreadPool/main.cpp -o CMakeFiles/ThreadPoolExample.dir/main.cpp.s

CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.o: CMakeFiles/ThreadPoolExample.dir/flags.make
CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.o: ../thread_pool.cpp
CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.o: CMakeFiles/ThreadPoolExample.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kameron/repos/design-patterns/ThreadPool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.o -MF CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.o.d -o CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.o -c /home/kameron/repos/design-patterns/ThreadPool/thread_pool.cpp

CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kameron/repos/design-patterns/ThreadPool/thread_pool.cpp > CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.i

CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kameron/repos/design-patterns/ThreadPool/thread_pool.cpp -o CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.s

# Object files for target ThreadPoolExample
ThreadPoolExample_OBJECTS = \
"CMakeFiles/ThreadPoolExample.dir/main.cpp.o" \
"CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.o"

# External object files for target ThreadPoolExample
ThreadPoolExample_EXTERNAL_OBJECTS =

ThreadPoolExample: CMakeFiles/ThreadPoolExample.dir/main.cpp.o
ThreadPoolExample: CMakeFiles/ThreadPoolExample.dir/thread_pool.cpp.o
ThreadPoolExample: CMakeFiles/ThreadPoolExample.dir/build.make
ThreadPoolExample: CMakeFiles/ThreadPoolExample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kameron/repos/design-patterns/ThreadPool/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ThreadPoolExample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ThreadPoolExample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ThreadPoolExample.dir/build: ThreadPoolExample
.PHONY : CMakeFiles/ThreadPoolExample.dir/build

CMakeFiles/ThreadPoolExample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ThreadPoolExample.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ThreadPoolExample.dir/clean

CMakeFiles/ThreadPoolExample.dir/depend:
	cd /home/kameron/repos/design-patterns/ThreadPool/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kameron/repos/design-patterns/ThreadPool /home/kameron/repos/design-patterns/ThreadPool /home/kameron/repos/design-patterns/ThreadPool/build /home/kameron/repos/design-patterns/ThreadPool/build /home/kameron/repos/design-patterns/ThreadPool/build/CMakeFiles/ThreadPoolExample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ThreadPoolExample.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_SOURCE_DIR = /global/homes/j/jeshwant/sum_harness_instructional

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /global/homes/j/jeshwant/sum_harness_instructional/build

# Include any dependencies generated for this target.
include CMakeFiles/sum_indirect.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/sum_indirect.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/sum_indirect.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sum_indirect.dir/flags.make

CMakeFiles/sum_indirect.dir/sum_indirect.cpp.o: CMakeFiles/sum_indirect.dir/flags.make
CMakeFiles/sum_indirect.dir/sum_indirect.cpp.o: ../sum_indirect.cpp
CMakeFiles/sum_indirect.dir/sum_indirect.cpp.o: CMakeFiles/sum_indirect.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/global/homes/j/jeshwant/sum_harness_instructional/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sum_indirect.dir/sum_indirect.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/sum_indirect.dir/sum_indirect.cpp.o -MF CMakeFiles/sum_indirect.dir/sum_indirect.cpp.o.d -o CMakeFiles/sum_indirect.dir/sum_indirect.cpp.o -c /global/homes/j/jeshwant/sum_harness_instructional/sum_indirect.cpp

CMakeFiles/sum_indirect.dir/sum_indirect.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sum_indirect.dir/sum_indirect.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /global/homes/j/jeshwant/sum_harness_instructional/sum_indirect.cpp > CMakeFiles/sum_indirect.dir/sum_indirect.cpp.i

CMakeFiles/sum_indirect.dir/sum_indirect.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sum_indirect.dir/sum_indirect.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /global/homes/j/jeshwant/sum_harness_instructional/sum_indirect.cpp -o CMakeFiles/sum_indirect.dir/sum_indirect.cpp.s

# Object files for target sum_indirect
sum_indirect_OBJECTS = \
"CMakeFiles/sum_indirect.dir/sum_indirect.cpp.o"

# External object files for target sum_indirect
sum_indirect_EXTERNAL_OBJECTS = \
"/global/homes/j/jeshwant/sum_harness_instructional/build/CMakeFiles/benchmark.dir/benchmark.cpp.o"

sum_indirect: CMakeFiles/sum_indirect.dir/sum_indirect.cpp.o
sum_indirect: CMakeFiles/benchmark.dir/benchmark.cpp.o
sum_indirect: CMakeFiles/sum_indirect.dir/build.make
sum_indirect: CMakeFiles/sum_indirect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/global/homes/j/jeshwant/sum_harness_instructional/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable sum_indirect"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sum_indirect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sum_indirect.dir/build: sum_indirect
.PHONY : CMakeFiles/sum_indirect.dir/build

CMakeFiles/sum_indirect.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sum_indirect.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sum_indirect.dir/clean

CMakeFiles/sum_indirect.dir/depend:
	cd /global/homes/j/jeshwant/sum_harness_instructional/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /global/homes/j/jeshwant/sum_harness_instructional /global/homes/j/jeshwant/sum_harness_instructional /global/homes/j/jeshwant/sum_harness_instructional/build /global/homes/j/jeshwant/sum_harness_instructional/build /global/homes/j/jeshwant/sum_harness_instructional/build/CMakeFiles/sum_indirect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sum_indirect.dir/depend


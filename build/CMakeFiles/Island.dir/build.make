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
CMAKE_SOURCE_DIR = /home/uj/Documents/C++/island_game

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/uj/Documents/C++/island_game/build

# Include any dependencies generated for this target.
include CMakeFiles/Island.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Island.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Island.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Island.dir/flags.make

CMakeFiles/Island.dir/src/custom_type_registry.cpp.o: CMakeFiles/Island.dir/flags.make
CMakeFiles/Island.dir/src/custom_type_registry.cpp.o: ../src/custom_type_registry.cpp
CMakeFiles/Island.dir/src/custom_type_registry.cpp.o: CMakeFiles/Island.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uj/Documents/C++/island_game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Island.dir/src/custom_type_registry.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Island.dir/src/custom_type_registry.cpp.o -MF CMakeFiles/Island.dir/src/custom_type_registry.cpp.o.d -o CMakeFiles/Island.dir/src/custom_type_registry.cpp.o -c /home/uj/Documents/C++/island_game/src/custom_type_registry.cpp

CMakeFiles/Island.dir/src/custom_type_registry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Island.dir/src/custom_type_registry.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uj/Documents/C++/island_game/src/custom_type_registry.cpp > CMakeFiles/Island.dir/src/custom_type_registry.cpp.i

CMakeFiles/Island.dir/src/custom_type_registry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Island.dir/src/custom_type_registry.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uj/Documents/C++/island_game/src/custom_type_registry.cpp -o CMakeFiles/Island.dir/src/custom_type_registry.cpp.s

CMakeFiles/Island.dir/src/island.cpp.o: CMakeFiles/Island.dir/flags.make
CMakeFiles/Island.dir/src/island.cpp.o: ../src/island.cpp
CMakeFiles/Island.dir/src/island.cpp.o: CMakeFiles/Island.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uj/Documents/C++/island_game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Island.dir/src/island.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Island.dir/src/island.cpp.o -MF CMakeFiles/Island.dir/src/island.cpp.o.d -o CMakeFiles/Island.dir/src/island.cpp.o -c /home/uj/Documents/C++/island_game/src/island.cpp

CMakeFiles/Island.dir/src/island.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Island.dir/src/island.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uj/Documents/C++/island_game/src/island.cpp > CMakeFiles/Island.dir/src/island.cpp.i

CMakeFiles/Island.dir/src/island.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Island.dir/src/island.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uj/Documents/C++/island_game/src/island.cpp -o CMakeFiles/Island.dir/src/island.cpp.s

CMakeFiles/Island.dir/src/main.cpp.o: CMakeFiles/Island.dir/flags.make
CMakeFiles/Island.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/Island.dir/src/main.cpp.o: CMakeFiles/Island.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uj/Documents/C++/island_game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Island.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Island.dir/src/main.cpp.o -MF CMakeFiles/Island.dir/src/main.cpp.o.d -o CMakeFiles/Island.dir/src/main.cpp.o -c /home/uj/Documents/C++/island_game/src/main.cpp

CMakeFiles/Island.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Island.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uj/Documents/C++/island_game/src/main.cpp > CMakeFiles/Island.dir/src/main.cpp.i

CMakeFiles/Island.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Island.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uj/Documents/C++/island_game/src/main.cpp -o CMakeFiles/Island.dir/src/main.cpp.s

CMakeFiles/Island.dir/src/optimised_dummy.cpp.o: CMakeFiles/Island.dir/flags.make
CMakeFiles/Island.dir/src/optimised_dummy.cpp.o: ../src/optimised_dummy.cpp
CMakeFiles/Island.dir/src/optimised_dummy.cpp.o: CMakeFiles/Island.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uj/Documents/C++/island_game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Island.dir/src/optimised_dummy.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Island.dir/src/optimised_dummy.cpp.o -MF CMakeFiles/Island.dir/src/optimised_dummy.cpp.o.d -o CMakeFiles/Island.dir/src/optimised_dummy.cpp.o -c /home/uj/Documents/C++/island_game/src/optimised_dummy.cpp

CMakeFiles/Island.dir/src/optimised_dummy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Island.dir/src/optimised_dummy.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uj/Documents/C++/island_game/src/optimised_dummy.cpp > CMakeFiles/Island.dir/src/optimised_dummy.cpp.i

CMakeFiles/Island.dir/src/optimised_dummy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Island.dir/src/optimised_dummy.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uj/Documents/C++/island_game/src/optimised_dummy.cpp -o CMakeFiles/Island.dir/src/optimised_dummy.cpp.s

CMakeFiles/Island.dir/src/state_load.cpp.o: CMakeFiles/Island.dir/flags.make
CMakeFiles/Island.dir/src/state_load.cpp.o: ../src/state_load.cpp
CMakeFiles/Island.dir/src/state_load.cpp.o: CMakeFiles/Island.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uj/Documents/C++/island_game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Island.dir/src/state_load.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Island.dir/src/state_load.cpp.o -MF CMakeFiles/Island.dir/src/state_load.cpp.o.d -o CMakeFiles/Island.dir/src/state_load.cpp.o -c /home/uj/Documents/C++/island_game/src/state_load.cpp

CMakeFiles/Island.dir/src/state_load.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Island.dir/src/state_load.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uj/Documents/C++/island_game/src/state_load.cpp > CMakeFiles/Island.dir/src/state_load.cpp.i

CMakeFiles/Island.dir/src/state_load.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Island.dir/src/state_load.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uj/Documents/C++/island_game/src/state_load.cpp -o CMakeFiles/Island.dir/src/state_load.cpp.s

CMakeFiles/Island.dir/src/state_play.cpp.o: CMakeFiles/Island.dir/flags.make
CMakeFiles/Island.dir/src/state_play.cpp.o: ../src/state_play.cpp
CMakeFiles/Island.dir/src/state_play.cpp.o: CMakeFiles/Island.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/uj/Documents/C++/island_game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Island.dir/src/state_play.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Island.dir/src/state_play.cpp.o -MF CMakeFiles/Island.dir/src/state_play.cpp.o.d -o CMakeFiles/Island.dir/src/state_play.cpp.o -c /home/uj/Documents/C++/island_game/src/state_play.cpp

CMakeFiles/Island.dir/src/state_play.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Island.dir/src/state_play.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/uj/Documents/C++/island_game/src/state_play.cpp > CMakeFiles/Island.dir/src/state_play.cpp.i

CMakeFiles/Island.dir/src/state_play.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Island.dir/src/state_play.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/uj/Documents/C++/island_game/src/state_play.cpp -o CMakeFiles/Island.dir/src/state_play.cpp.s

# Object files for target Island
Island_OBJECTS = \
"CMakeFiles/Island.dir/src/custom_type_registry.cpp.o" \
"CMakeFiles/Island.dir/src/island.cpp.o" \
"CMakeFiles/Island.dir/src/main.cpp.o" \
"CMakeFiles/Island.dir/src/optimised_dummy.cpp.o" \
"CMakeFiles/Island.dir/src/state_load.cpp.o" \
"CMakeFiles/Island.dir/src/state_play.cpp.o"

# External object files for target Island
Island_EXTERNAL_OBJECTS =

Island: CMakeFiles/Island.dir/src/custom_type_registry.cpp.o
Island: CMakeFiles/Island.dir/src/island.cpp.o
Island: CMakeFiles/Island.dir/src/main.cpp.o
Island: CMakeFiles/Island.dir/src/optimised_dummy.cpp.o
Island: CMakeFiles/Island.dir/src/state_load.cpp.o
Island: CMakeFiles/Island.dir/src/state_play.cpp.o
Island: CMakeFiles/Island.dir/build.make
Island: external/UFO-Cells/libUFOCells.a
Island: squirrel/ex/lib/libsquirrel_static.a
Island: squirrel/ex/lib/libsqstdlib_static.a
Island: /usr/lib/x86_64-linux-gnu/libGL.so
Island: /usr/lib/x86_64-linux-gnu/libX11.so
Island: /usr/lib/x86_64-linux-gnu/libpng.so
Island: /usr/lib/x86_64-linux-gnu/libz.so
Island: CMakeFiles/Island.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/uj/Documents/C++/island_game/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable Island"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Island.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Island.dir/build: Island
.PHONY : CMakeFiles/Island.dir/build

CMakeFiles/Island.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Island.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Island.dir/clean

CMakeFiles/Island.dir/depend:
	cd /home/uj/Documents/C++/island_game/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/uj/Documents/C++/island_game /home/uj/Documents/C++/island_game /home/uj/Documents/C++/island_game/build /home/uj/Documents/C++/island_game/build /home/uj/Documents/C++/island_game/build/CMakeFiles/Island.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Island.dir/depend


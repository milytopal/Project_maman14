# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/milytopal/CLionProjects/Project_mily_oz

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/milytopal/CLionProjects/Project_mily_oz/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Project_maman14.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Project_maman14.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Project_maman14.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Project_maman14.dir/flags.make

CMakeFiles/Project_maman14.dir/main.c.o: CMakeFiles/Project_maman14.dir/flags.make
CMakeFiles/Project_maman14.dir/main.c.o: ../main.c
CMakeFiles/Project_maman14.dir/main.c.o: CMakeFiles/Project_maman14.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/milytopal/CLionProjects/Project_mily_oz/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Project_maman14.dir/main.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Project_maman14.dir/main.c.o -MF CMakeFiles/Project_maman14.dir/main.c.o.d -o CMakeFiles/Project_maman14.dir/main.c.o -c /Users/milytopal/CLionProjects/Project_mily_oz/main.c

CMakeFiles/Project_maman14.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project_maman14.dir/main.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/milytopal/CLionProjects/Project_mily_oz/main.c > CMakeFiles/Project_maman14.dir/main.c.i

CMakeFiles/Project_maman14.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project_maman14.dir/main.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/milytopal/CLionProjects/Project_mily_oz/main.c -o CMakeFiles/Project_maman14.dir/main.c.s

CMakeFiles/Project_maman14.dir/dataLinkedList.c.o: CMakeFiles/Project_maman14.dir/flags.make
CMakeFiles/Project_maman14.dir/dataLinkedList.c.o: ../dataLinkedList.c
CMakeFiles/Project_maman14.dir/dataLinkedList.c.o: CMakeFiles/Project_maman14.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/milytopal/CLionProjects/Project_mily_oz/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Project_maman14.dir/dataLinkedList.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Project_maman14.dir/dataLinkedList.c.o -MF CMakeFiles/Project_maman14.dir/dataLinkedList.c.o.d -o CMakeFiles/Project_maman14.dir/dataLinkedList.c.o -c /Users/milytopal/CLionProjects/Project_mily_oz/dataLinkedList.c

CMakeFiles/Project_maman14.dir/dataLinkedList.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project_maman14.dir/dataLinkedList.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/milytopal/CLionProjects/Project_mily_oz/dataLinkedList.c > CMakeFiles/Project_maman14.dir/dataLinkedList.c.i

CMakeFiles/Project_maman14.dir/dataLinkedList.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project_maman14.dir/dataLinkedList.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/milytopal/CLionProjects/Project_mily_oz/dataLinkedList.c -o CMakeFiles/Project_maman14.dir/dataLinkedList.c.s

CMakeFiles/Project_maman14.dir/parseCodeToFile.c.o: CMakeFiles/Project_maman14.dir/flags.make
CMakeFiles/Project_maman14.dir/parseCodeToFile.c.o: ../parseCodeToFile.c
CMakeFiles/Project_maman14.dir/parseCodeToFile.c.o: CMakeFiles/Project_maman14.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/milytopal/CLionProjects/Project_mily_oz/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Project_maman14.dir/parseCodeToFile.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Project_maman14.dir/parseCodeToFile.c.o -MF CMakeFiles/Project_maman14.dir/parseCodeToFile.c.o.d -o CMakeFiles/Project_maman14.dir/parseCodeToFile.c.o -c /Users/milytopal/CLionProjects/Project_mily_oz/parseCodeToFile.c

CMakeFiles/Project_maman14.dir/parseCodeToFile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project_maman14.dir/parseCodeToFile.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/milytopal/CLionProjects/Project_mily_oz/parseCodeToFile.c > CMakeFiles/Project_maman14.dir/parseCodeToFile.c.i

CMakeFiles/Project_maman14.dir/parseCodeToFile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project_maman14.dir/parseCodeToFile.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/milytopal/CLionProjects/Project_mily_oz/parseCodeToFile.c -o CMakeFiles/Project_maman14.dir/parseCodeToFile.c.s

CMakeFiles/Project_maman14.dir/utils.c.o: CMakeFiles/Project_maman14.dir/flags.make
CMakeFiles/Project_maman14.dir/utils.c.o: ../utils.c
CMakeFiles/Project_maman14.dir/utils.c.o: CMakeFiles/Project_maman14.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/milytopal/CLionProjects/Project_mily_oz/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Project_maman14.dir/utils.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Project_maman14.dir/utils.c.o -MF CMakeFiles/Project_maman14.dir/utils.c.o.d -o CMakeFiles/Project_maman14.dir/utils.c.o -c /Users/milytopal/CLionProjects/Project_mily_oz/utils.c

CMakeFiles/Project_maman14.dir/utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project_maman14.dir/utils.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/milytopal/CLionProjects/Project_mily_oz/utils.c > CMakeFiles/Project_maman14.dir/utils.c.i

CMakeFiles/Project_maman14.dir/utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project_maman14.dir/utils.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/milytopal/CLionProjects/Project_mily_oz/utils.c -o CMakeFiles/Project_maman14.dir/utils.c.s

CMakeFiles/Project_maman14.dir/firstPass.c.o: CMakeFiles/Project_maman14.dir/flags.make
CMakeFiles/Project_maman14.dir/firstPass.c.o: ../firstPass.c
CMakeFiles/Project_maman14.dir/firstPass.c.o: CMakeFiles/Project_maman14.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/milytopal/CLionProjects/Project_mily_oz/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/Project_maman14.dir/firstPass.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Project_maman14.dir/firstPass.c.o -MF CMakeFiles/Project_maman14.dir/firstPass.c.o.d -o CMakeFiles/Project_maman14.dir/firstPass.c.o -c /Users/milytopal/CLionProjects/Project_mily_oz/firstPass.c

CMakeFiles/Project_maman14.dir/firstPass.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project_maman14.dir/firstPass.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/milytopal/CLionProjects/Project_mily_oz/firstPass.c > CMakeFiles/Project_maman14.dir/firstPass.c.i

CMakeFiles/Project_maman14.dir/firstPass.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project_maman14.dir/firstPass.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/milytopal/CLionProjects/Project_mily_oz/firstPass.c -o CMakeFiles/Project_maman14.dir/firstPass.c.s

CMakeFiles/Project_maman14.dir/secondPass.c.o: CMakeFiles/Project_maman14.dir/flags.make
CMakeFiles/Project_maman14.dir/secondPass.c.o: ../secondPass.c
CMakeFiles/Project_maman14.dir/secondPass.c.o: CMakeFiles/Project_maman14.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/milytopal/CLionProjects/Project_mily_oz/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/Project_maman14.dir/secondPass.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Project_maman14.dir/secondPass.c.o -MF CMakeFiles/Project_maman14.dir/secondPass.c.o.d -o CMakeFiles/Project_maman14.dir/secondPass.c.o -c /Users/milytopal/CLionProjects/Project_mily_oz/secondPass.c

CMakeFiles/Project_maman14.dir/secondPass.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project_maman14.dir/secondPass.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/milytopal/CLionProjects/Project_mily_oz/secondPass.c > CMakeFiles/Project_maman14.dir/secondPass.c.i

CMakeFiles/Project_maman14.dir/secondPass.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project_maman14.dir/secondPass.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/milytopal/CLionProjects/Project_mily_oz/secondPass.c -o CMakeFiles/Project_maman14.dir/secondPass.c.s

CMakeFiles/Project_maman14.dir/preProcessor.c.o: CMakeFiles/Project_maman14.dir/flags.make
CMakeFiles/Project_maman14.dir/preProcessor.c.o: ../preProcessor.c
CMakeFiles/Project_maman14.dir/preProcessor.c.o: CMakeFiles/Project_maman14.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/milytopal/CLionProjects/Project_mily_oz/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/Project_maman14.dir/preProcessor.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Project_maman14.dir/preProcessor.c.o -MF CMakeFiles/Project_maman14.dir/preProcessor.c.o.d -o CMakeFiles/Project_maman14.dir/preProcessor.c.o -c /Users/milytopal/CLionProjects/Project_mily_oz/preProcessor.c

CMakeFiles/Project_maman14.dir/preProcessor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project_maman14.dir/preProcessor.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/milytopal/CLionProjects/Project_mily_oz/preProcessor.c > CMakeFiles/Project_maman14.dir/preProcessor.c.i

CMakeFiles/Project_maman14.dir/preProcessor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project_maman14.dir/preProcessor.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/milytopal/CLionProjects/Project_mily_oz/preProcessor.c -o CMakeFiles/Project_maman14.dir/preProcessor.c.s

CMakeFiles/Project_maman14.dir/wordLinkedList.c.o: CMakeFiles/Project_maman14.dir/flags.make
CMakeFiles/Project_maman14.dir/wordLinkedList.c.o: ../wordLinkedList.c
CMakeFiles/Project_maman14.dir/wordLinkedList.c.o: CMakeFiles/Project_maman14.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/milytopal/CLionProjects/Project_mily_oz/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/Project_maman14.dir/wordLinkedList.c.o"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Project_maman14.dir/wordLinkedList.c.o -MF CMakeFiles/Project_maman14.dir/wordLinkedList.c.o.d -o CMakeFiles/Project_maman14.dir/wordLinkedList.c.o -c /Users/milytopal/CLionProjects/Project_mily_oz/wordLinkedList.c

CMakeFiles/Project_maman14.dir/wordLinkedList.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Project_maman14.dir/wordLinkedList.c.i"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/milytopal/CLionProjects/Project_mily_oz/wordLinkedList.c > CMakeFiles/Project_maman14.dir/wordLinkedList.c.i

CMakeFiles/Project_maman14.dir/wordLinkedList.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Project_maman14.dir/wordLinkedList.c.s"
	/Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/milytopal/CLionProjects/Project_mily_oz/wordLinkedList.c -o CMakeFiles/Project_maman14.dir/wordLinkedList.c.s

# Object files for target Project_maman14
Project_maman14_OBJECTS = \
"CMakeFiles/Project_maman14.dir/main.c.o" \
"CMakeFiles/Project_maman14.dir/dataLinkedList.c.o" \
"CMakeFiles/Project_maman14.dir/parseCodeToFile.c.o" \
"CMakeFiles/Project_maman14.dir/utils.c.o" \
"CMakeFiles/Project_maman14.dir/firstPass.c.o" \
"CMakeFiles/Project_maman14.dir/secondPass.c.o" \
"CMakeFiles/Project_maman14.dir/preProcessor.c.o" \
"CMakeFiles/Project_maman14.dir/wordLinkedList.c.o"

# External object files for target Project_maman14
Project_maman14_EXTERNAL_OBJECTS =

Project_maman14: CMakeFiles/Project_maman14.dir/main.c.o
Project_maman14: CMakeFiles/Project_maman14.dir/dataLinkedList.c.o
Project_maman14: CMakeFiles/Project_maman14.dir/parseCodeToFile.c.o
Project_maman14: CMakeFiles/Project_maman14.dir/utils.c.o
Project_maman14: CMakeFiles/Project_maman14.dir/firstPass.c.o
Project_maman14: CMakeFiles/Project_maman14.dir/secondPass.c.o
Project_maman14: CMakeFiles/Project_maman14.dir/preProcessor.c.o
Project_maman14: CMakeFiles/Project_maman14.dir/wordLinkedList.c.o
Project_maman14: CMakeFiles/Project_maman14.dir/build.make
Project_maman14: CMakeFiles/Project_maman14.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/milytopal/CLionProjects/Project_mily_oz/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking C executable Project_maman14"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Project_maman14.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Project_maman14.dir/build: Project_maman14
.PHONY : CMakeFiles/Project_maman14.dir/build

CMakeFiles/Project_maman14.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Project_maman14.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Project_maman14.dir/clean

CMakeFiles/Project_maman14.dir/depend:
	cd /Users/milytopal/CLionProjects/Project_mily_oz/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/milytopal/CLionProjects/Project_mily_oz /Users/milytopal/CLionProjects/Project_mily_oz /Users/milytopal/CLionProjects/Project_mily_oz/cmake-build-debug /Users/milytopal/CLionProjects/Project_mily_oz/cmake-build-debug /Users/milytopal/CLionProjects/Project_mily_oz/cmake-build-debug/CMakeFiles/Project_maman14.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Project_maman14.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /Users/jamie/Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake

# The command to remove a file.
RM = /Users/jamie/Applications/CLion.app/Contents/bin/cmake/mac/aarch64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jamie/Dev/proof

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jamie/Dev/proof/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/jj.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/jj.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/jj.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/jj.dir/flags.make

CMakeFiles/jj.dir/src/Byteloader.cpp.o: CMakeFiles/jj.dir/flags.make
CMakeFiles/jj.dir/src/Byteloader.cpp.o: /Users/jamie/Dev/proof/src/Byteloader.cpp
CMakeFiles/jj.dir/src/Byteloader.cpp.o: CMakeFiles/jj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jamie/Dev/proof/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/jj.dir/src/Byteloader.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/jj.dir/src/Byteloader.cpp.o -MF CMakeFiles/jj.dir/src/Byteloader.cpp.o.d -o CMakeFiles/jj.dir/src/Byteloader.cpp.o -c /Users/jamie/Dev/proof/src/Byteloader.cpp

CMakeFiles/jj.dir/src/Byteloader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/jj.dir/src/Byteloader.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/Dev/proof/src/Byteloader.cpp > CMakeFiles/jj.dir/src/Byteloader.cpp.i

CMakeFiles/jj.dir/src/Byteloader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/jj.dir/src/Byteloader.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/Dev/proof/src/Byteloader.cpp -o CMakeFiles/jj.dir/src/Byteloader.cpp.s

CMakeFiles/jj.dir/src/ClassLoader.cpp.o: CMakeFiles/jj.dir/flags.make
CMakeFiles/jj.dir/src/ClassLoader.cpp.o: /Users/jamie/Dev/proof/src/ClassLoader.cpp
CMakeFiles/jj.dir/src/ClassLoader.cpp.o: CMakeFiles/jj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jamie/Dev/proof/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/jj.dir/src/ClassLoader.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/jj.dir/src/ClassLoader.cpp.o -MF CMakeFiles/jj.dir/src/ClassLoader.cpp.o.d -o CMakeFiles/jj.dir/src/ClassLoader.cpp.o -c /Users/jamie/Dev/proof/src/ClassLoader.cpp

CMakeFiles/jj.dir/src/ClassLoader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/jj.dir/src/ClassLoader.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/Dev/proof/src/ClassLoader.cpp > CMakeFiles/jj.dir/src/ClassLoader.cpp.i

CMakeFiles/jj.dir/src/ClassLoader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/jj.dir/src/ClassLoader.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/Dev/proof/src/ClassLoader.cpp -o CMakeFiles/jj.dir/src/ClassLoader.cpp.s

CMakeFiles/jj.dir/src/Compiler.cpp.o: CMakeFiles/jj.dir/flags.make
CMakeFiles/jj.dir/src/Compiler.cpp.o: /Users/jamie/Dev/proof/src/Compiler.cpp
CMakeFiles/jj.dir/src/Compiler.cpp.o: CMakeFiles/jj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jamie/Dev/proof/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/jj.dir/src/Compiler.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/jj.dir/src/Compiler.cpp.o -MF CMakeFiles/jj.dir/src/Compiler.cpp.o.d -o CMakeFiles/jj.dir/src/Compiler.cpp.o -c /Users/jamie/Dev/proof/src/Compiler.cpp

CMakeFiles/jj.dir/src/Compiler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/jj.dir/src/Compiler.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/Dev/proof/src/Compiler.cpp > CMakeFiles/jj.dir/src/Compiler.cpp.i

CMakeFiles/jj.dir/src/Compiler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/jj.dir/src/Compiler.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/Dev/proof/src/Compiler.cpp -o CMakeFiles/jj.dir/src/Compiler.cpp.s

CMakeFiles/jj.dir/src/Environment.cpp.o: CMakeFiles/jj.dir/flags.make
CMakeFiles/jj.dir/src/Environment.cpp.o: /Users/jamie/Dev/proof/src/Environment.cpp
CMakeFiles/jj.dir/src/Environment.cpp.o: CMakeFiles/jj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jamie/Dev/proof/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/jj.dir/src/Environment.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/jj.dir/src/Environment.cpp.o -MF CMakeFiles/jj.dir/src/Environment.cpp.o.d -o CMakeFiles/jj.dir/src/Environment.cpp.o -c /Users/jamie/Dev/proof/src/Environment.cpp

CMakeFiles/jj.dir/src/Environment.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/jj.dir/src/Environment.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/Dev/proof/src/Environment.cpp > CMakeFiles/jj.dir/src/Environment.cpp.i

CMakeFiles/jj.dir/src/Environment.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/jj.dir/src/Environment.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/Dev/proof/src/Environment.cpp -o CMakeFiles/jj.dir/src/Environment.cpp.s

CMakeFiles/jj.dir/src/Expression.cpp.o: CMakeFiles/jj.dir/flags.make
CMakeFiles/jj.dir/src/Expression.cpp.o: /Users/jamie/Dev/proof/src/Expression.cpp
CMakeFiles/jj.dir/src/Expression.cpp.o: CMakeFiles/jj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jamie/Dev/proof/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/jj.dir/src/Expression.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/jj.dir/src/Expression.cpp.o -MF CMakeFiles/jj.dir/src/Expression.cpp.o.d -o CMakeFiles/jj.dir/src/Expression.cpp.o -c /Users/jamie/Dev/proof/src/Expression.cpp

CMakeFiles/jj.dir/src/Expression.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/jj.dir/src/Expression.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/Dev/proof/src/Expression.cpp > CMakeFiles/jj.dir/src/Expression.cpp.i

CMakeFiles/jj.dir/src/Expression.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/jj.dir/src/Expression.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/Dev/proof/src/Expression.cpp -o CMakeFiles/jj.dir/src/Expression.cpp.s

CMakeFiles/jj.dir/src/Linker.cpp.o: CMakeFiles/jj.dir/flags.make
CMakeFiles/jj.dir/src/Linker.cpp.o: /Users/jamie/Dev/proof/src/Linker.cpp
CMakeFiles/jj.dir/src/Linker.cpp.o: CMakeFiles/jj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jamie/Dev/proof/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/jj.dir/src/Linker.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/jj.dir/src/Linker.cpp.o -MF CMakeFiles/jj.dir/src/Linker.cpp.o.d -o CMakeFiles/jj.dir/src/Linker.cpp.o -c /Users/jamie/Dev/proof/src/Linker.cpp

CMakeFiles/jj.dir/src/Linker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/jj.dir/src/Linker.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/Dev/proof/src/Linker.cpp > CMakeFiles/jj.dir/src/Linker.cpp.i

CMakeFiles/jj.dir/src/Linker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/jj.dir/src/Linker.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/Dev/proof/src/Linker.cpp -o CMakeFiles/jj.dir/src/Linker.cpp.s

CMakeFiles/jj.dir/src/Parser.cpp.o: CMakeFiles/jj.dir/flags.make
CMakeFiles/jj.dir/src/Parser.cpp.o: /Users/jamie/Dev/proof/src/Parser.cpp
CMakeFiles/jj.dir/src/Parser.cpp.o: CMakeFiles/jj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jamie/Dev/proof/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/jj.dir/src/Parser.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/jj.dir/src/Parser.cpp.o -MF CMakeFiles/jj.dir/src/Parser.cpp.o.d -o CMakeFiles/jj.dir/src/Parser.cpp.o -c /Users/jamie/Dev/proof/src/Parser.cpp

CMakeFiles/jj.dir/src/Parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/jj.dir/src/Parser.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/Dev/proof/src/Parser.cpp > CMakeFiles/jj.dir/src/Parser.cpp.i

CMakeFiles/jj.dir/src/Parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/jj.dir/src/Parser.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/Dev/proof/src/Parser.cpp -o CMakeFiles/jj.dir/src/Parser.cpp.s

CMakeFiles/jj.dir/src/Scanner.cpp.o: CMakeFiles/jj.dir/flags.make
CMakeFiles/jj.dir/src/Scanner.cpp.o: /Users/jamie/Dev/proof/src/Scanner.cpp
CMakeFiles/jj.dir/src/Scanner.cpp.o: CMakeFiles/jj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jamie/Dev/proof/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/jj.dir/src/Scanner.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/jj.dir/src/Scanner.cpp.o -MF CMakeFiles/jj.dir/src/Scanner.cpp.o.d -o CMakeFiles/jj.dir/src/Scanner.cpp.o -c /Users/jamie/Dev/proof/src/Scanner.cpp

CMakeFiles/jj.dir/src/Scanner.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/jj.dir/src/Scanner.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/Dev/proof/src/Scanner.cpp > CMakeFiles/jj.dir/src/Scanner.cpp.i

CMakeFiles/jj.dir/src/Scanner.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/jj.dir/src/Scanner.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/Dev/proof/src/Scanner.cpp -o CMakeFiles/jj.dir/src/Scanner.cpp.s

CMakeFiles/jj.dir/src/Token.cpp.o: CMakeFiles/jj.dir/flags.make
CMakeFiles/jj.dir/src/Token.cpp.o: /Users/jamie/Dev/proof/src/Token.cpp
CMakeFiles/jj.dir/src/Token.cpp.o: CMakeFiles/jj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jamie/Dev/proof/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/jj.dir/src/Token.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/jj.dir/src/Token.cpp.o -MF CMakeFiles/jj.dir/src/Token.cpp.o.d -o CMakeFiles/jj.dir/src/Token.cpp.o -c /Users/jamie/Dev/proof/src/Token.cpp

CMakeFiles/jj.dir/src/Token.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/jj.dir/src/Token.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/Dev/proof/src/Token.cpp > CMakeFiles/jj.dir/src/Token.cpp.i

CMakeFiles/jj.dir/src/Token.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/jj.dir/src/Token.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/Dev/proof/src/Token.cpp -o CMakeFiles/jj.dir/src/Token.cpp.s

CMakeFiles/jj.dir/src/main.cpp.o: CMakeFiles/jj.dir/flags.make
CMakeFiles/jj.dir/src/main.cpp.o: /Users/jamie/Dev/proof/src/main.cpp
CMakeFiles/jj.dir/src/main.cpp.o: CMakeFiles/jj.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/jamie/Dev/proof/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/jj.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/jj.dir/src/main.cpp.o -MF CMakeFiles/jj.dir/src/main.cpp.o.d -o CMakeFiles/jj.dir/src/main.cpp.o -c /Users/jamie/Dev/proof/src/main.cpp

CMakeFiles/jj.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/jj.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jamie/Dev/proof/src/main.cpp > CMakeFiles/jj.dir/src/main.cpp.i

CMakeFiles/jj.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/jj.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jamie/Dev/proof/src/main.cpp -o CMakeFiles/jj.dir/src/main.cpp.s

# Object files for target jj
jj_OBJECTS = \
"CMakeFiles/jj.dir/src/Byteloader.cpp.o" \
"CMakeFiles/jj.dir/src/ClassLoader.cpp.o" \
"CMakeFiles/jj.dir/src/Compiler.cpp.o" \
"CMakeFiles/jj.dir/src/Environment.cpp.o" \
"CMakeFiles/jj.dir/src/Expression.cpp.o" \
"CMakeFiles/jj.dir/src/Linker.cpp.o" \
"CMakeFiles/jj.dir/src/Parser.cpp.o" \
"CMakeFiles/jj.dir/src/Scanner.cpp.o" \
"CMakeFiles/jj.dir/src/Token.cpp.o" \
"CMakeFiles/jj.dir/src/main.cpp.o"

# External object files for target jj
jj_EXTERNAL_OBJECTS =

jj: CMakeFiles/jj.dir/src/Byteloader.cpp.o
jj: CMakeFiles/jj.dir/src/ClassLoader.cpp.o
jj: CMakeFiles/jj.dir/src/Compiler.cpp.o
jj: CMakeFiles/jj.dir/src/Environment.cpp.o
jj: CMakeFiles/jj.dir/src/Expression.cpp.o
jj: CMakeFiles/jj.dir/src/Linker.cpp.o
jj: CMakeFiles/jj.dir/src/Parser.cpp.o
jj: CMakeFiles/jj.dir/src/Scanner.cpp.o
jj: CMakeFiles/jj.dir/src/Token.cpp.o
jj: CMakeFiles/jj.dir/src/main.cpp.o
jj: CMakeFiles/jj.dir/build.make
jj: CMakeFiles/jj.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/jamie/Dev/proof/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX executable jj"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/jj.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/jj.dir/build: jj
.PHONY : CMakeFiles/jj.dir/build

CMakeFiles/jj.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/jj.dir/cmake_clean.cmake
.PHONY : CMakeFiles/jj.dir/clean

CMakeFiles/jj.dir/depend:
	cd /Users/jamie/Dev/proof/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jamie/Dev/proof /Users/jamie/Dev/proof /Users/jamie/Dev/proof/cmake-build-debug /Users/jamie/Dev/proof/cmake-build-debug /Users/jamie/Dev/proof/cmake-build-debug/CMakeFiles/jj.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/jj.dir/depend


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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hardik/team_4/rotor_ws/src/mavlink

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hardik/team_4/rotor_ws/build/mavlink

# Utility rule file for standard.xml-v1.0.

# Include any custom commands dependencies for this target.
include CMakeFiles/standard.xml-v1.0.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/standard.xml-v1.0.dir/progress.make

CMakeFiles/standard.xml-v1.0: include/v1.0/standard/standard.h

include/v1.0/standard/standard.h: /home/hardik/team_4/rotor_ws/src/mavlink/message_definitions/v1.0/standard.xml
include/v1.0/standard/standard.h: /home/hardik/team_4/rotor_ws/src/mavlink/message_definitions/v1.0/common.xml
include/v1.0/standard/standard.h: /home/hardik/team_4/rotor_ws/src/mavlink/pymavlink/tools/mavgen.py
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hardik/team_4/rotor_ws/build/mavlink/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating include/v1.0/standard/standard.h"
	/usr/bin/env PYTHONPATH="/home/hardik/team_4/rotor_ws/src/mavlink:/opt/ros/noetic/lib/python3/dist-packages" /usr/bin/python3.8 /home/hardik/team_4/rotor_ws/src/mavlink/pymavlink/tools/mavgen.py --lang=C --wire-protocol=1.0 --output=include/v1.0 /home/hardik/team_4/rotor_ws/src/mavlink/message_definitions/v1.0/standard.xml

standard.xml-v1.0: CMakeFiles/standard.xml-v1.0
standard.xml-v1.0: include/v1.0/standard/standard.h
standard.xml-v1.0: CMakeFiles/standard.xml-v1.0.dir/build.make
.PHONY : standard.xml-v1.0

# Rule to build all files generated by this target.
CMakeFiles/standard.xml-v1.0.dir/build: standard.xml-v1.0
.PHONY : CMakeFiles/standard.xml-v1.0.dir/build

CMakeFiles/standard.xml-v1.0.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/standard.xml-v1.0.dir/cmake_clean.cmake
.PHONY : CMakeFiles/standard.xml-v1.0.dir/clean

CMakeFiles/standard.xml-v1.0.dir/depend:
	cd /home/hardik/team_4/rotor_ws/build/mavlink && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hardik/team_4/rotor_ws/src/mavlink /home/hardik/team_4/rotor_ws/src/mavlink /home/hardik/team_4/rotor_ws/build/mavlink /home/hardik/team_4/rotor_ws/build/mavlink /home/hardik/team_4/rotor_ws/build/mavlink/CMakeFiles/standard.xml-v1.0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/standard.xml-v1.0.dir/depend


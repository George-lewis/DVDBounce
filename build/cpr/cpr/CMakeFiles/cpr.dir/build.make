# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/george/proj

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/george/proj/build

# Include any dependencies generated for this target.
include cpr/cpr/CMakeFiles/cpr.dir/depend.make

# Include the progress variables for this target.
include cpr/cpr/CMakeFiles/cpr.dir/progress.make

# Include the compile flags for this target's objects.
include cpr/cpr/CMakeFiles/cpr.dir/flags.make

cpr/cpr/CMakeFiles/cpr.dir/auth.cpp.o: cpr/cpr/CMakeFiles/cpr.dir/flags.make
cpr/cpr/CMakeFiles/cpr.dir/auth.cpp.o: ../cpr/cpr/auth.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object cpr/cpr/CMakeFiles/cpr.dir/auth.cpp.o"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpr.dir/auth.cpp.o -c /home/george/proj/cpr/cpr/auth.cpp

cpr/cpr/CMakeFiles/cpr.dir/auth.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpr.dir/auth.cpp.i"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/proj/cpr/cpr/auth.cpp > CMakeFiles/cpr.dir/auth.cpp.i

cpr/cpr/CMakeFiles/cpr.dir/auth.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpr.dir/auth.cpp.s"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/proj/cpr/cpr/auth.cpp -o CMakeFiles/cpr.dir/auth.cpp.s

cpr/cpr/CMakeFiles/cpr.dir/cookies.cpp.o: cpr/cpr/CMakeFiles/cpr.dir/flags.make
cpr/cpr/CMakeFiles/cpr.dir/cookies.cpp.o: ../cpr/cpr/cookies.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object cpr/cpr/CMakeFiles/cpr.dir/cookies.cpp.o"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpr.dir/cookies.cpp.o -c /home/george/proj/cpr/cpr/cookies.cpp

cpr/cpr/CMakeFiles/cpr.dir/cookies.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpr.dir/cookies.cpp.i"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/proj/cpr/cpr/cookies.cpp > CMakeFiles/cpr.dir/cookies.cpp.i

cpr/cpr/CMakeFiles/cpr.dir/cookies.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpr.dir/cookies.cpp.s"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/proj/cpr/cpr/cookies.cpp -o CMakeFiles/cpr.dir/cookies.cpp.s

cpr/cpr/CMakeFiles/cpr.dir/cprtypes.cpp.o: cpr/cpr/CMakeFiles/cpr.dir/flags.make
cpr/cpr/CMakeFiles/cpr.dir/cprtypes.cpp.o: ../cpr/cpr/cprtypes.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object cpr/cpr/CMakeFiles/cpr.dir/cprtypes.cpp.o"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpr.dir/cprtypes.cpp.o -c /home/george/proj/cpr/cpr/cprtypes.cpp

cpr/cpr/CMakeFiles/cpr.dir/cprtypes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpr.dir/cprtypes.cpp.i"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/proj/cpr/cpr/cprtypes.cpp > CMakeFiles/cpr.dir/cprtypes.cpp.i

cpr/cpr/CMakeFiles/cpr.dir/cprtypes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpr.dir/cprtypes.cpp.s"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/proj/cpr/cpr/cprtypes.cpp -o CMakeFiles/cpr.dir/cprtypes.cpp.s

cpr/cpr/CMakeFiles/cpr.dir/digest.cpp.o: cpr/cpr/CMakeFiles/cpr.dir/flags.make
cpr/cpr/CMakeFiles/cpr.dir/digest.cpp.o: ../cpr/cpr/digest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object cpr/cpr/CMakeFiles/cpr.dir/digest.cpp.o"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpr.dir/digest.cpp.o -c /home/george/proj/cpr/cpr/digest.cpp

cpr/cpr/CMakeFiles/cpr.dir/digest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpr.dir/digest.cpp.i"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/proj/cpr/cpr/digest.cpp > CMakeFiles/cpr.dir/digest.cpp.i

cpr/cpr/CMakeFiles/cpr.dir/digest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpr.dir/digest.cpp.s"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/proj/cpr/cpr/digest.cpp -o CMakeFiles/cpr.dir/digest.cpp.s

cpr/cpr/CMakeFiles/cpr.dir/error.cpp.o: cpr/cpr/CMakeFiles/cpr.dir/flags.make
cpr/cpr/CMakeFiles/cpr.dir/error.cpp.o: ../cpr/cpr/error.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object cpr/cpr/CMakeFiles/cpr.dir/error.cpp.o"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpr.dir/error.cpp.o -c /home/george/proj/cpr/cpr/error.cpp

cpr/cpr/CMakeFiles/cpr.dir/error.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpr.dir/error.cpp.i"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/proj/cpr/cpr/error.cpp > CMakeFiles/cpr.dir/error.cpp.i

cpr/cpr/CMakeFiles/cpr.dir/error.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpr.dir/error.cpp.s"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/proj/cpr/cpr/error.cpp -o CMakeFiles/cpr.dir/error.cpp.s

cpr/cpr/CMakeFiles/cpr.dir/multipart.cpp.o: cpr/cpr/CMakeFiles/cpr.dir/flags.make
cpr/cpr/CMakeFiles/cpr.dir/multipart.cpp.o: ../cpr/cpr/multipart.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object cpr/cpr/CMakeFiles/cpr.dir/multipart.cpp.o"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpr.dir/multipart.cpp.o -c /home/george/proj/cpr/cpr/multipart.cpp

cpr/cpr/CMakeFiles/cpr.dir/multipart.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpr.dir/multipart.cpp.i"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/proj/cpr/cpr/multipart.cpp > CMakeFiles/cpr.dir/multipart.cpp.i

cpr/cpr/CMakeFiles/cpr.dir/multipart.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpr.dir/multipart.cpp.s"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/proj/cpr/cpr/multipart.cpp -o CMakeFiles/cpr.dir/multipart.cpp.s

cpr/cpr/CMakeFiles/cpr.dir/parameters.cpp.o: cpr/cpr/CMakeFiles/cpr.dir/flags.make
cpr/cpr/CMakeFiles/cpr.dir/parameters.cpp.o: ../cpr/cpr/parameters.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object cpr/cpr/CMakeFiles/cpr.dir/parameters.cpp.o"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpr.dir/parameters.cpp.o -c /home/george/proj/cpr/cpr/parameters.cpp

cpr/cpr/CMakeFiles/cpr.dir/parameters.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpr.dir/parameters.cpp.i"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/proj/cpr/cpr/parameters.cpp > CMakeFiles/cpr.dir/parameters.cpp.i

cpr/cpr/CMakeFiles/cpr.dir/parameters.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpr.dir/parameters.cpp.s"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/proj/cpr/cpr/parameters.cpp -o CMakeFiles/cpr.dir/parameters.cpp.s

cpr/cpr/CMakeFiles/cpr.dir/payload.cpp.o: cpr/cpr/CMakeFiles/cpr.dir/flags.make
cpr/cpr/CMakeFiles/cpr.dir/payload.cpp.o: ../cpr/cpr/payload.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object cpr/cpr/CMakeFiles/cpr.dir/payload.cpp.o"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpr.dir/payload.cpp.o -c /home/george/proj/cpr/cpr/payload.cpp

cpr/cpr/CMakeFiles/cpr.dir/payload.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpr.dir/payload.cpp.i"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/proj/cpr/cpr/payload.cpp > CMakeFiles/cpr.dir/payload.cpp.i

cpr/cpr/CMakeFiles/cpr.dir/payload.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpr.dir/payload.cpp.s"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/proj/cpr/cpr/payload.cpp -o CMakeFiles/cpr.dir/payload.cpp.s

cpr/cpr/CMakeFiles/cpr.dir/proxies.cpp.o: cpr/cpr/CMakeFiles/cpr.dir/flags.make
cpr/cpr/CMakeFiles/cpr.dir/proxies.cpp.o: ../cpr/cpr/proxies.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object cpr/cpr/CMakeFiles/cpr.dir/proxies.cpp.o"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpr.dir/proxies.cpp.o -c /home/george/proj/cpr/cpr/proxies.cpp

cpr/cpr/CMakeFiles/cpr.dir/proxies.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpr.dir/proxies.cpp.i"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/proj/cpr/cpr/proxies.cpp > CMakeFiles/cpr.dir/proxies.cpp.i

cpr/cpr/CMakeFiles/cpr.dir/proxies.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpr.dir/proxies.cpp.s"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/proj/cpr/cpr/proxies.cpp -o CMakeFiles/cpr.dir/proxies.cpp.s

cpr/cpr/CMakeFiles/cpr.dir/session.cpp.o: cpr/cpr/CMakeFiles/cpr.dir/flags.make
cpr/cpr/CMakeFiles/cpr.dir/session.cpp.o: ../cpr/cpr/session.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object cpr/cpr/CMakeFiles/cpr.dir/session.cpp.o"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpr.dir/session.cpp.o -c /home/george/proj/cpr/cpr/session.cpp

cpr/cpr/CMakeFiles/cpr.dir/session.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpr.dir/session.cpp.i"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/proj/cpr/cpr/session.cpp > CMakeFiles/cpr.dir/session.cpp.i

cpr/cpr/CMakeFiles/cpr.dir/session.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpr.dir/session.cpp.s"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/proj/cpr/cpr/session.cpp -o CMakeFiles/cpr.dir/session.cpp.s

cpr/cpr/CMakeFiles/cpr.dir/timeout.cpp.o: cpr/cpr/CMakeFiles/cpr.dir/flags.make
cpr/cpr/CMakeFiles/cpr.dir/timeout.cpp.o: ../cpr/cpr/timeout.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object cpr/cpr/CMakeFiles/cpr.dir/timeout.cpp.o"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpr.dir/timeout.cpp.o -c /home/george/proj/cpr/cpr/timeout.cpp

cpr/cpr/CMakeFiles/cpr.dir/timeout.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpr.dir/timeout.cpp.i"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/proj/cpr/cpr/timeout.cpp > CMakeFiles/cpr.dir/timeout.cpp.i

cpr/cpr/CMakeFiles/cpr.dir/timeout.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpr.dir/timeout.cpp.s"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/proj/cpr/cpr/timeout.cpp -o CMakeFiles/cpr.dir/timeout.cpp.s

cpr/cpr/CMakeFiles/cpr.dir/util.cpp.o: cpr/cpr/CMakeFiles/cpr.dir/flags.make
cpr/cpr/CMakeFiles/cpr.dir/util.cpp.o: ../cpr/cpr/util.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object cpr/cpr/CMakeFiles/cpr.dir/util.cpp.o"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpr.dir/util.cpp.o -c /home/george/proj/cpr/cpr/util.cpp

cpr/cpr/CMakeFiles/cpr.dir/util.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpr.dir/util.cpp.i"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/proj/cpr/cpr/util.cpp > CMakeFiles/cpr.dir/util.cpp.i

cpr/cpr/CMakeFiles/cpr.dir/util.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpr.dir/util.cpp.s"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/proj/cpr/cpr/util.cpp -o CMakeFiles/cpr.dir/util.cpp.s

cpr/cpr/CMakeFiles/cpr.dir/ssl_options.cpp.o: cpr/cpr/CMakeFiles/cpr.dir/flags.make
cpr/cpr/CMakeFiles/cpr.dir/ssl_options.cpp.o: ../cpr/cpr/ssl_options.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object cpr/cpr/CMakeFiles/cpr.dir/ssl_options.cpp.o"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpr.dir/ssl_options.cpp.o -c /home/george/proj/cpr/cpr/ssl_options.cpp

cpr/cpr/CMakeFiles/cpr.dir/ssl_options.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpr.dir/ssl_options.cpp.i"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/proj/cpr/cpr/ssl_options.cpp > CMakeFiles/cpr.dir/ssl_options.cpp.i

cpr/cpr/CMakeFiles/cpr.dir/ssl_options.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpr.dir/ssl_options.cpp.s"
	cd /home/george/proj/build/cpr/cpr && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/proj/cpr/cpr/ssl_options.cpp -o CMakeFiles/cpr.dir/ssl_options.cpp.s

# Object files for target cpr
cpr_OBJECTS = \
"CMakeFiles/cpr.dir/auth.cpp.o" \
"CMakeFiles/cpr.dir/cookies.cpp.o" \
"CMakeFiles/cpr.dir/cprtypes.cpp.o" \
"CMakeFiles/cpr.dir/digest.cpp.o" \
"CMakeFiles/cpr.dir/error.cpp.o" \
"CMakeFiles/cpr.dir/multipart.cpp.o" \
"CMakeFiles/cpr.dir/parameters.cpp.o" \
"CMakeFiles/cpr.dir/payload.cpp.o" \
"CMakeFiles/cpr.dir/proxies.cpp.o" \
"CMakeFiles/cpr.dir/session.cpp.o" \
"CMakeFiles/cpr.dir/timeout.cpp.o" \
"CMakeFiles/cpr.dir/util.cpp.o" \
"CMakeFiles/cpr.dir/ssl_options.cpp.o"

# External object files for target cpr
cpr_EXTERNAL_OBJECTS =

lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/auth.cpp.o
lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/cookies.cpp.o
lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/cprtypes.cpp.o
lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/digest.cpp.o
lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/error.cpp.o
lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/multipart.cpp.o
lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/parameters.cpp.o
lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/payload.cpp.o
lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/proxies.cpp.o
lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/session.cpp.o
lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/timeout.cpp.o
lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/util.cpp.o
lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/ssl_options.cpp.o
lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/build.make
lib/libcpr.a: cpr/cpr/CMakeFiles/cpr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX static library ../../lib/libcpr.a"
	cd /home/george/proj/build/cpr/cpr && $(CMAKE_COMMAND) -P CMakeFiles/cpr.dir/cmake_clean_target.cmake
	cd /home/george/proj/build/cpr/cpr && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cpr/cpr/CMakeFiles/cpr.dir/build: lib/libcpr.a

.PHONY : cpr/cpr/CMakeFiles/cpr.dir/build

cpr/cpr/CMakeFiles/cpr.dir/clean:
	cd /home/george/proj/build/cpr/cpr && $(CMAKE_COMMAND) -P CMakeFiles/cpr.dir/cmake_clean.cmake
.PHONY : cpr/cpr/CMakeFiles/cpr.dir/clean

cpr/cpr/CMakeFiles/cpr.dir/depend:
	cd /home/george/proj/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/proj /home/george/proj/cpr/cpr /home/george/proj/build /home/george/proj/build/cpr/cpr /home/george/proj/build/cpr/cpr/CMakeFiles/cpr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cpr/cpr/CMakeFiles/cpr.dir/depend


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
include cpr/test/CMakeFiles/put_tests.dir/depend.make

# Include the progress variables for this target.
include cpr/test/CMakeFiles/put_tests.dir/progress.make

# Include the compile flags for this target's objects.
include cpr/test/CMakeFiles/put_tests.dir/flags.make

cpr/test/CMakeFiles/put_tests.dir/put_tests.cpp.o: cpr/test/CMakeFiles/put_tests.dir/flags.make
cpr/test/CMakeFiles/put_tests.dir/put_tests.cpp.o: ../cpr/test/put_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object cpr/test/CMakeFiles/put_tests.dir/put_tests.cpp.o"
	cd /home/george/proj/build/cpr/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/put_tests.dir/put_tests.cpp.o -c /home/george/proj/cpr/test/put_tests.cpp

cpr/test/CMakeFiles/put_tests.dir/put_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/put_tests.dir/put_tests.cpp.i"
	cd /home/george/proj/build/cpr/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/george/proj/cpr/test/put_tests.cpp > CMakeFiles/put_tests.dir/put_tests.cpp.i

cpr/test/CMakeFiles/put_tests.dir/put_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/put_tests.dir/put_tests.cpp.s"
	cd /home/george/proj/build/cpr/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/george/proj/cpr/test/put_tests.cpp -o CMakeFiles/put_tests.dir/put_tests.cpp.s

# Object files for target put_tests
put_tests_OBJECTS = \
"CMakeFiles/put_tests.dir/put_tests.cpp.o"

# External object files for target put_tests
put_tests_EXTERNAL_OBJECTS =

bin/put_tests: cpr/test/CMakeFiles/put_tests.dir/put_tests.cpp.o
bin/put_tests: cpr/test/CMakeFiles/put_tests.dir/build.make
bin/put_tests: lib/libtest_server.a
bin/put_tests: lib/libgtest.a
bin/put_tests: lib/libcpr.a
bin/put_tests: lib/libmongoose.a
bin/put_tests: lib/libcurl.so
bin/put_tests: /home/george/.conan/data/OpenSSL/1.0.2o/conan/stable/package/444d1eb978f872e0f5e5a1a07145f79c475221ca/lib/libssl.a
bin/put_tests: /home/george/.conan/data/OpenSSL/1.0.2o/conan/stable/package/444d1eb978f872e0f5e5a1a07145f79c475221ca/lib/libssl.a
bin/put_tests: /home/george/.conan/data/OpenSSL/1.0.2o/conan/stable/package/444d1eb978f872e0f5e5a1a07145f79c475221ca/lib/libcrypto.a
bin/put_tests: /home/george/.conan/data/zlib/1.2.11/conan/stable/package/6af9cc7cb931c5ad942174fd7838eb655717c709/lib/libz.a
bin/put_tests: /usr/lib/libssh2.so
bin/put_tests: cpr/test/CMakeFiles/put_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/george/proj/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/put_tests"
	cd /home/george/proj/build/cpr/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/put_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cpr/test/CMakeFiles/put_tests.dir/build: bin/put_tests

.PHONY : cpr/test/CMakeFiles/put_tests.dir/build

cpr/test/CMakeFiles/put_tests.dir/clean:
	cd /home/george/proj/build/cpr/test && $(CMAKE_COMMAND) -P CMakeFiles/put_tests.dir/cmake_clean.cmake
.PHONY : cpr/test/CMakeFiles/put_tests.dir/clean

cpr/test/CMakeFiles/put_tests.dir/depend:
	cd /home/george/proj/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/george/proj /home/george/proj/cpr/test /home/george/proj/build /home/george/proj/build/cpr/test /home/george/proj/build/cpr/test/CMakeFiles/put_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cpr/test/CMakeFiles/put_tests.dir/depend


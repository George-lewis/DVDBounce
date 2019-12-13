cmake_minimum_required(VERSION 3.10)

if (MSVC)
    # warning level 4 and all warnings as errors
    add_compile_options(/W4 /WX)
else()
    # lots of warnings and all warnings as errors
    add_compile_options(-Wall -Wextra -pedantic)
endif()

project(Test VERSION 1.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

configure_file(test.h.in test.h)

include(conan/conanbuildinfo.cmake)
conan_basic_setup()

add_subdirectory(cpr)

add_executable(Test test.cpp)

include_directories(${CPR_INCLUDE_DIRS})
target_link_libraries(Test ${CPR_LIBRARIES})

target_link_libraries(Test ${CONAN_LIBS})

target_include_directories(Test PUBLIC "${CMAKE_BINARY_DIR}")


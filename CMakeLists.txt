cmake_minimum_required(VERSION 3.10)

if (MSVC)
    # warning level 4 and all warnings as errors
    add_compile_options(/W4 /WX)
else()
    # lots of warnings and all warnings as errors
    add_compile_options(-Wall -Wextra -pedantic)
endif()

project(dvdbounce)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include(conan/conanbuildinfo.cmake)
conan_basic_setup()

add_executable(dvdbounce src/config.cpp src/config.h src/main.cpp src/main.h src/logo.cpp src/logo.h src/util.cpp src/util.h)

target_link_libraries(dvdbounce ${CONAN_LIBS})


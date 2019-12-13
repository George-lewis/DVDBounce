# Install script for directory: /home/george/proj/cpr/opt/curl/lib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcurl.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcurl.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcurl.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/george/proj/build/lib/libcurl.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcurl.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcurl.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcurl.so"
         OLD_RPATH "/home/george/.conan/data/Poco/1.9.4/pocoproject/stable/package/2fdcca47c38e5221368f5cf61dc981eb1ad00722/lib:/home/george/.conan/data/jsonformoderncpp/3.7.3/vthiery/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib:/home/george/.conan/data/sfml/2.5.1/bincrafters/stable/package/e6ef907f35a7793fef768baf61e7f6ae7d1ffdf3/lib:/home/george/.conan/data/OpenSSL/1.0.2o/conan/stable/package/444d1eb978f872e0f5e5a1a07145f79c475221ca/lib:/home/george/.conan/data/freetype/2.9.0/bincrafters/stable/package/387eb5152986b9b3cbc2ebb94607d96d90674d67/lib:/home/george/.conan/data/libpng/1.6.34/bincrafters/stable/package/f99afdbf2a1cc98ba2029817b35103455b6a9b77/lib:/home/george/.conan/data/bzip2/1.0.6/conan/stable/package/da606cf731e334010b0bf6e85a2a6f891b9f36b0/lib:/home/george/.conan/data/zlib/1.2.11/conan/stable/package/6af9cc7cb931c5ad942174fd7838eb655717c709/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcurl.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()


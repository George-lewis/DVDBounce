include(CMakeParseArguments)

macro(conan_find_apple_frameworks FRAMEWORKS_FOUND FRAMEWORKS)
    if(APPLE)
        if(CMAKE_BUILD_TYPE)
            if(${CMAKE_BUILD_TYPE} MATCHES "Debug")
                set(CONAN_FRAMEWORKS ${CONAN_FRAMEWORKS_DEBUG} ${CONAN_FRAMEWORKS})
                set(CONAN_FRAMEWORK_DIRS ${CONAN_FRAMEWORK_DIRS_DEBUG} ${CONAN_FRAMEWORK_DIRS})
            elseif(${CMAKE_BUILD_TYPE} MATCHES "Release")
                set(CONAN_FRAMEWORKS ${CONAN_FRAMEWORKS_RELEASE} ${CONAN_BUILD_MODULES_PATHS})
                set(CONAN_FRAMEWORK_DIRS ${CONAN_FRAMEWORK_DIRS_RELEASE} ${CONAN_FRAMEWORK_DIRS})
            elseif(${CMAKE_BUILD_TYPE} MATCHES "RelWithDebInfo")
                set(CONAN_FRAMEWORKS ${CONAN_FRAMEWORKS_RELWITHDEBINFO} ${CONAN_BUILD_MODULES_PATHS})
                set(CONAN_FRAMEWORK_DIRS ${CONAN_FRAMEWORK_DIRS_RELWITHDEBINFO} ${CONAN_FRAMEWORK_DIRS})
            elseif(${CMAKE_BUILD_TYPE} MATCHES "MinSizeRel")
                set(CONAN_FRAMEWORKS ${CONAN_FRAMEWORKS_MINSIZEREL} ${CONAN_BUILD_MODULES_PATHS})
                set(CONAN_FRAMEWORK_DIRS ${CONAN_FRAMEWORK_DIRS_MINSIZEREL} ${CONAN_FRAMEWORK_DIRS})
            endif()
        endif()
        foreach(_FRAMEWORK ${FRAMEWORKS})
            # https://cmake.org/pipermail/cmake-developers/2017-August/030199.html
            find_library(CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND NAME ${_FRAMEWORK} PATHS ${CONAN_FRAMEWORK_DIRS})
            if(CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND)
                list(APPEND ${FRAMEWORKS_FOUND} ${CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND})
            else()
                message(FATAL_ERROR "Framework library ${_FRAMEWORK} not found in paths: ${CONAN_FRAMEWORK_DIRS}")
            endif()
        endforeach()
    endif()
endmacro()


set(CONAN_POCO_ROOT "/home/george/.conan/data/Poco/1.9.4/pocoproject/stable/package/2fdcca47c38e5221368f5cf61dc981eb1ad00722")
set(CONAN_INCLUDE_DIRS_POCO "/home/george/.conan/data/Poco/1.9.4/pocoproject/stable/package/2fdcca47c38e5221368f5cf61dc981eb1ad00722/include")
set(CONAN_LIB_DIRS_POCO "/home/george/.conan/data/Poco/1.9.4/pocoproject/stable/package/2fdcca47c38e5221368f5cf61dc981eb1ad00722/lib")
set(CONAN_BIN_DIRS_POCO )
set(CONAN_RES_DIRS_POCO )
set(CONAN_SRC_DIRS_POCO )
set(CONAN_BUILD_DIRS_POCO "/home/george/.conan/data/Poco/1.9.4/pocoproject/stable/package/2fdcca47c38e5221368f5cf61dc981eb1ad00722/")
set(CONAN_FRAMEWORK_DIRS_POCO )
set(CONAN_LIBS_POCO PocoMongoDB PocoNetSSL PocoNet PocoCrypto PocoDataSQLite PocoData PocoZip PocoUtil PocoXML PocoJSON PocoRedis PocoFoundation pthread dl rt)
set(CONAN_PKG_LIBS_POCO PocoMongoDB PocoNetSSL PocoNet PocoCrypto PocoDataSQLite PocoData PocoZip PocoUtil PocoXML PocoJSON PocoRedis PocoFoundation pthread dl rt)
set(CONAN_SYSTEM_LIBS_POCO )
set(CONAN_FRAMEWORKS_POCO )
set(CONAN_FRAMEWORKS_FOUND_POCO "")  # Will be filled later
set(CONAN_DEFINES_POCO "-DPOCO_STATIC=ON"
			"-DPOCO_NO_AUTOMATIC_LIBS")
set(CONAN_BUILD_MODULES_PATHS_POCO )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_POCO "POCO_STATIC=ON"
			"POCO_NO_AUTOMATIC_LIBS")

set(CONAN_C_FLAGS_POCO "")
set(CONAN_CXX_FLAGS_POCO "")
set(CONAN_SHARED_LINKER_FLAGS_POCO "")
set(CONAN_EXE_LINKER_FLAGS_POCO "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_POCO_LIST "")
set(CONAN_CXX_FLAGS_POCO_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_POCO_LIST "")
set(CONAN_EXE_LINKER_FLAGS_POCO_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_POCO "${CONAN_FRAMEWORKS_POCO}")
# Append to aggregated values variable
set(CONAN_LIBS_POCO ${CONAN_PKG_LIBS_POCO} ${CONAN_SYSTEM_LIBS_POCO} ${CONAN_FRAMEWORKS_FOUND_POCO})
# Aggregate package libs and frameworks for conan_package_library_targets()
set(CONAN_LIBS_FRAMEWORKS_POCO ${CONAN_PKG_LIBS_POCO} ${CONAN_FRAMEWORKS_FOUND_POCO})


set(CONAN_JSONFORMODERNCPP_ROOT "/home/george/.conan/data/jsonformoderncpp/3.7.3/vthiery/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_JSONFORMODERNCPP "/home/george/.conan/data/jsonformoderncpp/3.7.3/vthiery/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_JSONFORMODERNCPP "/home/george/.conan/data/jsonformoderncpp/3.7.3/vthiery/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib")
set(CONAN_BIN_DIRS_JSONFORMODERNCPP )
set(CONAN_RES_DIRS_JSONFORMODERNCPP )
set(CONAN_SRC_DIRS_JSONFORMODERNCPP )
set(CONAN_BUILD_DIRS_JSONFORMODERNCPP "/home/george/.conan/data/jsonformoderncpp/3.7.3/vthiery/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_JSONFORMODERNCPP )
set(CONAN_LIBS_JSONFORMODERNCPP )
set(CONAN_PKG_LIBS_JSONFORMODERNCPP )
set(CONAN_SYSTEM_LIBS_JSONFORMODERNCPP )
set(CONAN_FRAMEWORKS_JSONFORMODERNCPP )
set(CONAN_FRAMEWORKS_FOUND_JSONFORMODERNCPP "")  # Will be filled later
set(CONAN_DEFINES_JSONFORMODERNCPP )
set(CONAN_BUILD_MODULES_PATHS_JSONFORMODERNCPP )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_JSONFORMODERNCPP )

set(CONAN_C_FLAGS_JSONFORMODERNCPP "")
set(CONAN_CXX_FLAGS_JSONFORMODERNCPP "")
set(CONAN_SHARED_LINKER_FLAGS_JSONFORMODERNCPP "")
set(CONAN_EXE_LINKER_FLAGS_JSONFORMODERNCPP "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_JSONFORMODERNCPP_LIST "")
set(CONAN_CXX_FLAGS_JSONFORMODERNCPP_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_JSONFORMODERNCPP_LIST "")
set(CONAN_EXE_LINKER_FLAGS_JSONFORMODERNCPP_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_JSONFORMODERNCPP "${CONAN_FRAMEWORKS_JSONFORMODERNCPP}")
# Append to aggregated values variable
set(CONAN_LIBS_JSONFORMODERNCPP ${CONAN_PKG_LIBS_JSONFORMODERNCPP} ${CONAN_SYSTEM_LIBS_JSONFORMODERNCPP} ${CONAN_FRAMEWORKS_FOUND_JSONFORMODERNCPP})
# Aggregate package libs and frameworks for conan_package_library_targets()
set(CONAN_LIBS_FRAMEWORKS_JSONFORMODERNCPP ${CONAN_PKG_LIBS_JSONFORMODERNCPP} ${CONAN_FRAMEWORKS_FOUND_JSONFORMODERNCPP})


set(CONAN_SFML_ROOT "/home/george/.conan/data/sfml/2.5.1/bincrafters/stable/package/e6ef907f35a7793fef768baf61e7f6ae7d1ffdf3")
set(CONAN_INCLUDE_DIRS_SFML "/home/george/.conan/data/sfml/2.5.1/bincrafters/stable/package/e6ef907f35a7793fef768baf61e7f6ae7d1ffdf3/include")
set(CONAN_LIB_DIRS_SFML "/home/george/.conan/data/sfml/2.5.1/bincrafters/stable/package/e6ef907f35a7793fef768baf61e7f6ae7d1ffdf3/lib")
set(CONAN_BIN_DIRS_SFML )
set(CONAN_RES_DIRS_SFML )
set(CONAN_SRC_DIRS_SFML )
set(CONAN_BUILD_DIRS_SFML "/home/george/.conan/data/sfml/2.5.1/bincrafters/stable/package/e6ef907f35a7793fef768baf61e7f6ae7d1ffdf3/")
set(CONAN_FRAMEWORK_DIRS_SFML )
set(CONAN_LIBS_SFML sfml-graphics-s sfml-window-s sfml-system-s Xrandr X11 pthread xcb Xau Xext pthread xcb Xau Xrender X11 pthread xcb Xau X11 pthread xcb Xau Xdmcp GL udev)
set(CONAN_PKG_LIBS_SFML sfml-graphics-s sfml-window-s sfml-system-s Xrandr X11 pthread xcb Xau Xext pthread xcb Xau Xrender X11 pthread xcb Xau X11 pthread xcb Xau Xdmcp GL udev)
set(CONAN_SYSTEM_LIBS_SFML )
set(CONAN_FRAMEWORKS_SFML )
set(CONAN_FRAMEWORKS_FOUND_SFML "")  # Will be filled later
set(CONAN_DEFINES_SFML "-DSFML_STATIC")
set(CONAN_BUILD_MODULES_PATHS_SFML )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_SFML "SFML_STATIC")

set(CONAN_C_FLAGS_SFML "")
set(CONAN_CXX_FLAGS_SFML "")
set(CONAN_SHARED_LINKER_FLAGS_SFML "")
set(CONAN_EXE_LINKER_FLAGS_SFML "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_SFML_LIST "")
set(CONAN_CXX_FLAGS_SFML_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_SFML_LIST "")
set(CONAN_EXE_LINKER_FLAGS_SFML_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_SFML "${CONAN_FRAMEWORKS_SFML}")
# Append to aggregated values variable
set(CONAN_LIBS_SFML ${CONAN_PKG_LIBS_SFML} ${CONAN_SYSTEM_LIBS_SFML} ${CONAN_FRAMEWORKS_FOUND_SFML})
# Aggregate package libs and frameworks for conan_package_library_targets()
set(CONAN_LIBS_FRAMEWORKS_SFML ${CONAN_PKG_LIBS_SFML} ${CONAN_FRAMEWORKS_FOUND_SFML})


set(CONAN_OPENSSL_ROOT "/home/george/.conan/data/OpenSSL/1.0.2o/conan/stable/package/444d1eb978f872e0f5e5a1a07145f79c475221ca")
set(CONAN_INCLUDE_DIRS_OPENSSL "/home/george/.conan/data/OpenSSL/1.0.2o/conan/stable/package/444d1eb978f872e0f5e5a1a07145f79c475221ca/include")
set(CONAN_LIB_DIRS_OPENSSL "/home/george/.conan/data/OpenSSL/1.0.2o/conan/stable/package/444d1eb978f872e0f5e5a1a07145f79c475221ca/lib")
set(CONAN_BIN_DIRS_OPENSSL )
set(CONAN_RES_DIRS_OPENSSL )
set(CONAN_SRC_DIRS_OPENSSL )
set(CONAN_BUILD_DIRS_OPENSSL "/home/george/.conan/data/OpenSSL/1.0.2o/conan/stable/package/444d1eb978f872e0f5e5a1a07145f79c475221ca/")
set(CONAN_FRAMEWORK_DIRS_OPENSSL )
set(CONAN_LIBS_OPENSSL ssl crypto dl)
set(CONAN_PKG_LIBS_OPENSSL ssl crypto dl)
set(CONAN_SYSTEM_LIBS_OPENSSL )
set(CONAN_FRAMEWORKS_OPENSSL )
set(CONAN_FRAMEWORKS_FOUND_OPENSSL "")  # Will be filled later
set(CONAN_DEFINES_OPENSSL )
set(CONAN_BUILD_MODULES_PATHS_OPENSSL )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_OPENSSL )

set(CONAN_C_FLAGS_OPENSSL "")
set(CONAN_CXX_FLAGS_OPENSSL "")
set(CONAN_SHARED_LINKER_FLAGS_OPENSSL "")
set(CONAN_EXE_LINKER_FLAGS_OPENSSL "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_OPENSSL_LIST "")
set(CONAN_CXX_FLAGS_OPENSSL_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_OPENSSL_LIST "")
set(CONAN_EXE_LINKER_FLAGS_OPENSSL_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_OPENSSL "${CONAN_FRAMEWORKS_OPENSSL}")
# Append to aggregated values variable
set(CONAN_LIBS_OPENSSL ${CONAN_PKG_LIBS_OPENSSL} ${CONAN_SYSTEM_LIBS_OPENSSL} ${CONAN_FRAMEWORKS_FOUND_OPENSSL})
# Aggregate package libs and frameworks for conan_package_library_targets()
set(CONAN_LIBS_FRAMEWORKS_OPENSSL ${CONAN_PKG_LIBS_OPENSSL} ${CONAN_FRAMEWORKS_FOUND_OPENSSL})


set(CONAN_FREETYPE_ROOT "/home/george/.conan/data/freetype/2.9.0/bincrafters/stable/package/387eb5152986b9b3cbc2ebb94607d96d90674d67")
set(CONAN_INCLUDE_DIRS_FREETYPE "/home/george/.conan/data/freetype/2.9.0/bincrafters/stable/package/387eb5152986b9b3cbc2ebb94607d96d90674d67/include"
			"/home/george/.conan/data/freetype/2.9.0/bincrafters/stable/package/387eb5152986b9b3cbc2ebb94607d96d90674d67/include/freetype2")
set(CONAN_LIB_DIRS_FREETYPE "/home/george/.conan/data/freetype/2.9.0/bincrafters/stable/package/387eb5152986b9b3cbc2ebb94607d96d90674d67/lib")
set(CONAN_BIN_DIRS_FREETYPE )
set(CONAN_RES_DIRS_FREETYPE )
set(CONAN_SRC_DIRS_FREETYPE )
set(CONAN_BUILD_DIRS_FREETYPE "/home/george/.conan/data/freetype/2.9.0/bincrafters/stable/package/387eb5152986b9b3cbc2ebb94607d96d90674d67/")
set(CONAN_FRAMEWORK_DIRS_FREETYPE )
set(CONAN_LIBS_FREETYPE freetype m)
set(CONAN_PKG_LIBS_FREETYPE freetype m)
set(CONAN_SYSTEM_LIBS_FREETYPE )
set(CONAN_FRAMEWORKS_FREETYPE )
set(CONAN_FRAMEWORKS_FOUND_FREETYPE "")  # Will be filled later
set(CONAN_DEFINES_FREETYPE )
set(CONAN_BUILD_MODULES_PATHS_FREETYPE )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_FREETYPE )

set(CONAN_C_FLAGS_FREETYPE "")
set(CONAN_CXX_FLAGS_FREETYPE "")
set(CONAN_SHARED_LINKER_FLAGS_FREETYPE "")
set(CONAN_EXE_LINKER_FLAGS_FREETYPE "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_FREETYPE_LIST "")
set(CONAN_CXX_FLAGS_FREETYPE_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_FREETYPE_LIST "")
set(CONAN_EXE_LINKER_FLAGS_FREETYPE_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_FREETYPE "${CONAN_FRAMEWORKS_FREETYPE}")
# Append to aggregated values variable
set(CONAN_LIBS_FREETYPE ${CONAN_PKG_LIBS_FREETYPE} ${CONAN_SYSTEM_LIBS_FREETYPE} ${CONAN_FRAMEWORKS_FOUND_FREETYPE})
# Aggregate package libs and frameworks for conan_package_library_targets()
set(CONAN_LIBS_FRAMEWORKS_FREETYPE ${CONAN_PKG_LIBS_FREETYPE} ${CONAN_FRAMEWORKS_FOUND_FREETYPE})


set(CONAN_STB_ROOT "/home/george/.conan/data/stb/20180214/conan/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9")
set(CONAN_INCLUDE_DIRS_STB "/home/george/.conan/data/stb/20180214/conan/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include")
set(CONAN_LIB_DIRS_STB )
set(CONAN_BIN_DIRS_STB )
set(CONAN_RES_DIRS_STB )
set(CONAN_SRC_DIRS_STB )
set(CONAN_BUILD_DIRS_STB "/home/george/.conan/data/stb/20180214/conan/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/")
set(CONAN_FRAMEWORK_DIRS_STB )
set(CONAN_LIBS_STB )
set(CONAN_PKG_LIBS_STB )
set(CONAN_SYSTEM_LIBS_STB )
set(CONAN_FRAMEWORKS_STB )
set(CONAN_FRAMEWORKS_FOUND_STB "")  # Will be filled later
set(CONAN_DEFINES_STB "-DSTB_TEXTEDIT_KEYTYPE=unsigned")
set(CONAN_BUILD_MODULES_PATHS_STB )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_STB "STB_TEXTEDIT_KEYTYPE=unsigned")

set(CONAN_C_FLAGS_STB "")
set(CONAN_CXX_FLAGS_STB "")
set(CONAN_SHARED_LINKER_FLAGS_STB "")
set(CONAN_EXE_LINKER_FLAGS_STB "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_STB_LIST "")
set(CONAN_CXX_FLAGS_STB_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_STB_LIST "")
set(CONAN_EXE_LINKER_FLAGS_STB_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_STB "${CONAN_FRAMEWORKS_STB}")
# Append to aggregated values variable
set(CONAN_LIBS_STB ${CONAN_PKG_LIBS_STB} ${CONAN_SYSTEM_LIBS_STB} ${CONAN_FRAMEWORKS_FOUND_STB})
# Aggregate package libs and frameworks for conan_package_library_targets()
set(CONAN_LIBS_FRAMEWORKS_STB ${CONAN_PKG_LIBS_STB} ${CONAN_FRAMEWORKS_FOUND_STB})


set(CONAN_LIBPNG_ROOT "/home/george/.conan/data/libpng/1.6.34/bincrafters/stable/package/f99afdbf2a1cc98ba2029817b35103455b6a9b77")
set(CONAN_INCLUDE_DIRS_LIBPNG "/home/george/.conan/data/libpng/1.6.34/bincrafters/stable/package/f99afdbf2a1cc98ba2029817b35103455b6a9b77/include")
set(CONAN_LIB_DIRS_LIBPNG "/home/george/.conan/data/libpng/1.6.34/bincrafters/stable/package/f99afdbf2a1cc98ba2029817b35103455b6a9b77/lib")
set(CONAN_BIN_DIRS_LIBPNG "/home/george/.conan/data/libpng/1.6.34/bincrafters/stable/package/f99afdbf2a1cc98ba2029817b35103455b6a9b77/bin")
set(CONAN_RES_DIRS_LIBPNG )
set(CONAN_SRC_DIRS_LIBPNG )
set(CONAN_BUILD_DIRS_LIBPNG "/home/george/.conan/data/libpng/1.6.34/bincrafters/stable/package/f99afdbf2a1cc98ba2029817b35103455b6a9b77/")
set(CONAN_FRAMEWORK_DIRS_LIBPNG )
set(CONAN_LIBS_LIBPNG png16 m)
set(CONAN_PKG_LIBS_LIBPNG png16 m)
set(CONAN_SYSTEM_LIBS_LIBPNG )
set(CONAN_FRAMEWORKS_LIBPNG )
set(CONAN_FRAMEWORKS_FOUND_LIBPNG "")  # Will be filled later
set(CONAN_DEFINES_LIBPNG )
set(CONAN_BUILD_MODULES_PATHS_LIBPNG )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_LIBPNG )

set(CONAN_C_FLAGS_LIBPNG "")
set(CONAN_CXX_FLAGS_LIBPNG "")
set(CONAN_SHARED_LINKER_FLAGS_LIBPNG "")
set(CONAN_EXE_LINKER_FLAGS_LIBPNG "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_LIBPNG_LIST "")
set(CONAN_CXX_FLAGS_LIBPNG_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_LIBPNG_LIST "")
set(CONAN_EXE_LINKER_FLAGS_LIBPNG_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_LIBPNG "${CONAN_FRAMEWORKS_LIBPNG}")
# Append to aggregated values variable
set(CONAN_LIBS_LIBPNG ${CONAN_PKG_LIBS_LIBPNG} ${CONAN_SYSTEM_LIBS_LIBPNG} ${CONAN_FRAMEWORKS_FOUND_LIBPNG})
# Aggregate package libs and frameworks for conan_package_library_targets()
set(CONAN_LIBS_FRAMEWORKS_LIBPNG ${CONAN_PKG_LIBS_LIBPNG} ${CONAN_FRAMEWORKS_FOUND_LIBPNG})


set(CONAN_BZIP2_ROOT "/home/george/.conan/data/bzip2/1.0.6/conan/stable/package/da606cf731e334010b0bf6e85a2a6f891b9f36b0")
set(CONAN_INCLUDE_DIRS_BZIP2 "/home/george/.conan/data/bzip2/1.0.6/conan/stable/package/da606cf731e334010b0bf6e85a2a6f891b9f36b0/include")
set(CONAN_LIB_DIRS_BZIP2 "/home/george/.conan/data/bzip2/1.0.6/conan/stable/package/da606cf731e334010b0bf6e85a2a6f891b9f36b0/lib")
set(CONAN_BIN_DIRS_BZIP2 "/home/george/.conan/data/bzip2/1.0.6/conan/stable/package/da606cf731e334010b0bf6e85a2a6f891b9f36b0/bin")
set(CONAN_RES_DIRS_BZIP2 )
set(CONAN_SRC_DIRS_BZIP2 )
set(CONAN_BUILD_DIRS_BZIP2 "/home/george/.conan/data/bzip2/1.0.6/conan/stable/package/da606cf731e334010b0bf6e85a2a6f891b9f36b0/")
set(CONAN_FRAMEWORK_DIRS_BZIP2 )
set(CONAN_LIBS_BZIP2 bz2)
set(CONAN_PKG_LIBS_BZIP2 bz2)
set(CONAN_SYSTEM_LIBS_BZIP2 )
set(CONAN_FRAMEWORKS_BZIP2 )
set(CONAN_FRAMEWORKS_FOUND_BZIP2 "")  # Will be filled later
set(CONAN_DEFINES_BZIP2 )
set(CONAN_BUILD_MODULES_PATHS_BZIP2 )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_BZIP2 )

set(CONAN_C_FLAGS_BZIP2 "")
set(CONAN_CXX_FLAGS_BZIP2 "")
set(CONAN_SHARED_LINKER_FLAGS_BZIP2 "")
set(CONAN_EXE_LINKER_FLAGS_BZIP2 "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_BZIP2_LIST "")
set(CONAN_CXX_FLAGS_BZIP2_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_BZIP2_LIST "")
set(CONAN_EXE_LINKER_FLAGS_BZIP2_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_BZIP2 "${CONAN_FRAMEWORKS_BZIP2}")
# Append to aggregated values variable
set(CONAN_LIBS_BZIP2 ${CONAN_PKG_LIBS_BZIP2} ${CONAN_SYSTEM_LIBS_BZIP2} ${CONAN_FRAMEWORKS_FOUND_BZIP2})
# Aggregate package libs and frameworks for conan_package_library_targets()
set(CONAN_LIBS_FRAMEWORKS_BZIP2 ${CONAN_PKG_LIBS_BZIP2} ${CONAN_FRAMEWORKS_FOUND_BZIP2})


set(CONAN_ZLIB_ROOT "/home/george/.conan/data/zlib/1.2.11/conan/stable/package/6af9cc7cb931c5ad942174fd7838eb655717c709")
set(CONAN_INCLUDE_DIRS_ZLIB "/home/george/.conan/data/zlib/1.2.11/conan/stable/package/6af9cc7cb931c5ad942174fd7838eb655717c709/include")
set(CONAN_LIB_DIRS_ZLIB "/home/george/.conan/data/zlib/1.2.11/conan/stable/package/6af9cc7cb931c5ad942174fd7838eb655717c709/lib")
set(CONAN_BIN_DIRS_ZLIB )
set(CONAN_RES_DIRS_ZLIB )
set(CONAN_SRC_DIRS_ZLIB )
set(CONAN_BUILD_DIRS_ZLIB "/home/george/.conan/data/zlib/1.2.11/conan/stable/package/6af9cc7cb931c5ad942174fd7838eb655717c709/")
set(CONAN_FRAMEWORK_DIRS_ZLIB )
set(CONAN_LIBS_ZLIB z)
set(CONAN_PKG_LIBS_ZLIB z)
set(CONAN_SYSTEM_LIBS_ZLIB )
set(CONAN_FRAMEWORKS_ZLIB )
set(CONAN_FRAMEWORKS_FOUND_ZLIB "")  # Will be filled later
set(CONAN_DEFINES_ZLIB )
set(CONAN_BUILD_MODULES_PATHS_ZLIB )
# COMPILE_DEFINITIONS are equal to CONAN_DEFINES without -D, for targets
set(CONAN_COMPILE_DEFINITIONS_ZLIB )

set(CONAN_C_FLAGS_ZLIB "")
set(CONAN_CXX_FLAGS_ZLIB "")
set(CONAN_SHARED_LINKER_FLAGS_ZLIB "")
set(CONAN_EXE_LINKER_FLAGS_ZLIB "")

# For modern cmake targets we use the list variables (separated with ;)
set(CONAN_C_FLAGS_ZLIB_LIST "")
set(CONAN_CXX_FLAGS_ZLIB_LIST "")
set(CONAN_SHARED_LINKER_FLAGS_ZLIB_LIST "")
set(CONAN_EXE_LINKER_FLAGS_ZLIB_LIST "")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND_ZLIB "${CONAN_FRAMEWORKS_ZLIB}")
# Append to aggregated values variable
set(CONAN_LIBS_ZLIB ${CONAN_PKG_LIBS_ZLIB} ${CONAN_SYSTEM_LIBS_ZLIB} ${CONAN_FRAMEWORKS_FOUND_ZLIB})
# Aggregate package libs and frameworks for conan_package_library_targets()
set(CONAN_LIBS_FRAMEWORKS_ZLIB ${CONAN_PKG_LIBS_ZLIB} ${CONAN_FRAMEWORKS_FOUND_ZLIB})


### Definition of global aggregated variables ###

set(CONAN_PACKAGE_NAME None)
set(CONAN_PACKAGE_VERSION None)

set(CONAN_SETTINGS_ARCH "x86_64")
set(CONAN_SETTINGS_ARCH_BUILD "x86_64")
set(CONAN_SETTINGS_BUILD_TYPE "Release")
set(CONAN_SETTINGS_COMPILER "gcc")
set(CONAN_SETTINGS_COMPILER_LIBCXX "libstdc++11")
set(CONAN_SETTINGS_COMPILER_VERSION "9")
set(CONAN_SETTINGS_OS "Linux")
set(CONAN_SETTINGS_OS_BUILD "Linux")

set(CONAN_DEPENDENCIES Poco jsonformoderncpp sfml OpenSSL freetype stb libpng bzip2 zlib)
# Storing original command line args (CMake helper) flags
set(CONAN_CMD_CXX_FLAGS ${CONAN_CXX_FLAGS})

set(CONAN_CMD_SHARED_LINKER_FLAGS ${CONAN_SHARED_LINKER_FLAGS})
set(CONAN_CMD_C_FLAGS ${CONAN_C_FLAGS})
# Defining accumulated conan variables for all deps

set(CONAN_INCLUDE_DIRS "/home/george/.conan/data/Poco/1.9.4/pocoproject/stable/package/2fdcca47c38e5221368f5cf61dc981eb1ad00722/include"
			"/home/george/.conan/data/jsonformoderncpp/3.7.3/vthiery/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/george/.conan/data/sfml/2.5.1/bincrafters/stable/package/e6ef907f35a7793fef768baf61e7f6ae7d1ffdf3/include"
			"/home/george/.conan/data/OpenSSL/1.0.2o/conan/stable/package/444d1eb978f872e0f5e5a1a07145f79c475221ca/include"
			"/home/george/.conan/data/freetype/2.9.0/bincrafters/stable/package/387eb5152986b9b3cbc2ebb94607d96d90674d67/include"
			"/home/george/.conan/data/freetype/2.9.0/bincrafters/stable/package/387eb5152986b9b3cbc2ebb94607d96d90674d67/include/freetype2"
			"/home/george/.conan/data/stb/20180214/conan/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/include"
			"/home/george/.conan/data/libpng/1.6.34/bincrafters/stable/package/f99afdbf2a1cc98ba2029817b35103455b6a9b77/include"
			"/home/george/.conan/data/bzip2/1.0.6/conan/stable/package/da606cf731e334010b0bf6e85a2a6f891b9f36b0/include"
			"/home/george/.conan/data/zlib/1.2.11/conan/stable/package/6af9cc7cb931c5ad942174fd7838eb655717c709/include" ${CONAN_INCLUDE_DIRS})
set(CONAN_LIB_DIRS "/home/george/.conan/data/Poco/1.9.4/pocoproject/stable/package/2fdcca47c38e5221368f5cf61dc981eb1ad00722/lib"
			"/home/george/.conan/data/jsonformoderncpp/3.7.3/vthiery/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/lib"
			"/home/george/.conan/data/sfml/2.5.1/bincrafters/stable/package/e6ef907f35a7793fef768baf61e7f6ae7d1ffdf3/lib"
			"/home/george/.conan/data/OpenSSL/1.0.2o/conan/stable/package/444d1eb978f872e0f5e5a1a07145f79c475221ca/lib"
			"/home/george/.conan/data/freetype/2.9.0/bincrafters/stable/package/387eb5152986b9b3cbc2ebb94607d96d90674d67/lib"
			"/home/george/.conan/data/libpng/1.6.34/bincrafters/stable/package/f99afdbf2a1cc98ba2029817b35103455b6a9b77/lib"
			"/home/george/.conan/data/bzip2/1.0.6/conan/stable/package/da606cf731e334010b0bf6e85a2a6f891b9f36b0/lib"
			"/home/george/.conan/data/zlib/1.2.11/conan/stable/package/6af9cc7cb931c5ad942174fd7838eb655717c709/lib" ${CONAN_LIB_DIRS})
set(CONAN_BIN_DIRS "/home/george/.conan/data/libpng/1.6.34/bincrafters/stable/package/f99afdbf2a1cc98ba2029817b35103455b6a9b77/bin"
			"/home/george/.conan/data/bzip2/1.0.6/conan/stable/package/da606cf731e334010b0bf6e85a2a6f891b9f36b0/bin" ${CONAN_BIN_DIRS})
set(CONAN_RES_DIRS  ${CONAN_RES_DIRS})
set(CONAN_FRAMEWORK_DIRS  ${CONAN_FRAMEWORK_DIRS})
set(CONAN_LIBS PocoMongoDB PocoNetSSL PocoNet PocoCrypto PocoDataSQLite PocoData PocoZip PocoUtil PocoXML PocoJSON PocoRedis PocoFoundation rt sfml-graphics-s sfml-window-s sfml-system-s Xrandr X11 pthread xcb Xau Xext pthread xcb Xau Xrender X11 pthread xcb Xau X11 pthread xcb Xau Xdmcp GL udev ssl crypto dl freetype png16 m bz2 z ${CONAN_LIBS})
set(CONAN_PKG_LIBS PocoMongoDB PocoNetSSL PocoNet PocoCrypto PocoDataSQLite PocoData PocoZip PocoUtil PocoXML PocoJSON PocoRedis PocoFoundation rt sfml-graphics-s sfml-window-s sfml-system-s Xrandr X11 pthread xcb Xau Xext pthread xcb Xau Xrender X11 pthread xcb Xau X11 pthread xcb Xau Xdmcp GL udev ssl crypto dl freetype png16 m bz2 z ${CONAN_PKG_LIBS})
set(CONAN_SYSTEM_LIBS )
set(CONAN_FRAMEWORKS  ${CONAN_FRAMEWORKS})
set(CONAN_FRAMEWORKS_FOUND "")  # Will be filled later
set(CONAN_DEFINES "-DSTB_TEXTEDIT_KEYTYPE=unsigned"
			"-DSFML_STATIC"
			"-DPOCO_STATIC=ON"
			"-DPOCO_NO_AUTOMATIC_LIBS" ${CONAN_DEFINES})
set(CONAN_BUILD_MODULES_PATHS  ${CONAN_BUILD_MODULES_PATHS})
set(CONAN_CMAKE_MODULE_PATH "/home/george/.conan/data/Poco/1.9.4/pocoproject/stable/package/2fdcca47c38e5221368f5cf61dc981eb1ad00722/"
			"/home/george/.conan/data/jsonformoderncpp/3.7.3/vthiery/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/george/.conan/data/sfml/2.5.1/bincrafters/stable/package/e6ef907f35a7793fef768baf61e7f6ae7d1ffdf3/"
			"/home/george/.conan/data/OpenSSL/1.0.2o/conan/stable/package/444d1eb978f872e0f5e5a1a07145f79c475221ca/"
			"/home/george/.conan/data/freetype/2.9.0/bincrafters/stable/package/387eb5152986b9b3cbc2ebb94607d96d90674d67/"
			"/home/george/.conan/data/stb/20180214/conan/stable/package/5ab84d6acfe1f23c4fae0ab88f26e3a396351ac9/"
			"/home/george/.conan/data/libpng/1.6.34/bincrafters/stable/package/f99afdbf2a1cc98ba2029817b35103455b6a9b77/"
			"/home/george/.conan/data/bzip2/1.0.6/conan/stable/package/da606cf731e334010b0bf6e85a2a6f891b9f36b0/"
			"/home/george/.conan/data/zlib/1.2.11/conan/stable/package/6af9cc7cb931c5ad942174fd7838eb655717c709/" ${CONAN_CMAKE_MODULE_PATH})

set(CONAN_CXX_FLAGS " ${CONAN_CXX_FLAGS}")
set(CONAN_SHARED_LINKER_FLAGS " ${CONAN_SHARED_LINKER_FLAGS}")
set(CONAN_EXE_LINKER_FLAGS " ${CONAN_EXE_LINKER_FLAGS}")
set(CONAN_C_FLAGS " ${CONAN_C_FLAGS}")

# Apple Frameworks
conan_find_apple_frameworks(CONAN_FRAMEWORKS_FOUND "${CONAN_FRAMEWORKS}")
# Append to aggregated values variable
set(CONAN_LIBS ${CONAN_PKG_LIBS} ${CONAN_SYSTEM_LIBS} ${CONAN_FRAMEWORKS_FOUND})


###  Definition of macros and functions ###

macro(conan_define_targets)
    if(${CMAKE_VERSION} VERSION_LESS "3.1.2")
        message(FATAL_ERROR "TARGETS not supported by your CMake version!")
    endif()  # CMAKE > 3.x
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CONAN_CMD_CXX_FLAGS}")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${CONAN_CMD_C_FLAGS}")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} ${CONAN_CMD_SHARED_LINKER_FLAGS}")


    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_POCO}" "${CONAN_LIB_DIRS_POCO}"
                                  CONAN_PACKAGE_TARGETS_POCO "${CONAN_SYSTEM_LIBS_POCO} CONAN_PKG::OpenSSL"
                                  "" Poco)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_POCO_DEBUG}" "${CONAN_LIB_DIRS_POCO_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_POCO_DEBUG "${CONAN_SYSTEM_LIBS_POCO_DEBUG} CONAN_PKG::OpenSSL"
                                  "debug" Poco)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_POCO_RELEASE}" "${CONAN_LIB_DIRS_POCO_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_POCO_RELEASE "${CONAN_SYSTEM_LIBS_POCO_RELEASE} CONAN_PKG::OpenSSL"
                                  "release" Poco)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_POCO_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_POCO_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_POCO_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_POCO_RELWITHDEBINFO} CONAN_PKG::OpenSSL"
                                  "relwithdebinfo" Poco)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_POCO_MINSIZEREL}" "${CONAN_LIB_DIRS_POCO_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_POCO_MINSIZEREL "${CONAN_SYSTEM_LIBS_POCO_MINSIZEREL} CONAN_PKG::OpenSSL"
                                  "minsizerel" Poco)

    add_library(CONAN_PKG::Poco INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::Poco PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_POCO} ${CONAN_SHARED_LINKER_FLAGS_POCO_LIST} ${CONAN_EXE_LINKER_FLAGS_POCO_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_POCO_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_POCO_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_POCO_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_POCO_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_POCO_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_POCO_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_POCO_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_POCO_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_POCO_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_POCO_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_POCO_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_POCO_DEBUG_LIST}>
                                                                 CONAN_PKG::OpenSSL)
    set_property(TARGET CONAN_PKG::Poco PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_POCO}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_POCO_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_POCO_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_POCO_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_POCO_DEBUG}>)
    set_property(TARGET CONAN_PKG::Poco PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_POCO}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_POCO_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_POCO_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_POCO_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_POCO_DEBUG}>)
    set_property(TARGET CONAN_PKG::Poco PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_POCO_LIST} ${CONAN_CXX_FLAGS_POCO_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_POCO_RELEASE_LIST} ${CONAN_CXX_FLAGS_POCO_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_POCO_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_POCO_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_POCO_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_POCO_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_POCO_DEBUG_LIST}  ${CONAN_CXX_FLAGS_POCO_DEBUG_LIST}>)


    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_JSONFORMODERNCPP}" "${CONAN_LIB_DIRS_JSONFORMODERNCPP}"
                                  CONAN_PACKAGE_TARGETS_JSONFORMODERNCPP "${CONAN_SYSTEM_LIBS_JSONFORMODERNCPP} "
                                  "" jsonformoderncpp)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_JSONFORMODERNCPP_DEBUG}" "${CONAN_LIB_DIRS_JSONFORMODERNCPP_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_JSONFORMODERNCPP_DEBUG "${CONAN_SYSTEM_LIBS_JSONFORMODERNCPP_DEBUG} "
                                  "debug" jsonformoderncpp)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_JSONFORMODERNCPP_RELEASE}" "${CONAN_LIB_DIRS_JSONFORMODERNCPP_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_JSONFORMODERNCPP_RELEASE "${CONAN_SYSTEM_LIBS_JSONFORMODERNCPP_RELEASE} "
                                  "release" jsonformoderncpp)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_JSONFORMODERNCPP_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_JSONFORMODERNCPP_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_JSONFORMODERNCPP_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_JSONFORMODERNCPP_RELWITHDEBINFO} "
                                  "relwithdebinfo" jsonformoderncpp)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_JSONFORMODERNCPP_MINSIZEREL}" "${CONAN_LIB_DIRS_JSONFORMODERNCPP_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_JSONFORMODERNCPP_MINSIZEREL "${CONAN_SYSTEM_LIBS_JSONFORMODERNCPP_MINSIZEREL} "
                                  "minsizerel" jsonformoderncpp)

    add_library(CONAN_PKG::jsonformoderncpp INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::jsonformoderncpp PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_JSONFORMODERNCPP} ${CONAN_SHARED_LINKER_FLAGS_JSONFORMODERNCPP_LIST} ${CONAN_EXE_LINKER_FLAGS_JSONFORMODERNCPP_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_JSONFORMODERNCPP_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_JSONFORMODERNCPP_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_JSONFORMODERNCPP_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_JSONFORMODERNCPP_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_JSONFORMODERNCPP_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_JSONFORMODERNCPP_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_JSONFORMODERNCPP_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_JSONFORMODERNCPP_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_JSONFORMODERNCPP_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_JSONFORMODERNCPP_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_JSONFORMODERNCPP_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_JSONFORMODERNCPP_DEBUG_LIST}>
                                                                 )
    set_property(TARGET CONAN_PKG::jsonformoderncpp PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_JSONFORMODERNCPP}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_JSONFORMODERNCPP_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_JSONFORMODERNCPP_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_JSONFORMODERNCPP_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_JSONFORMODERNCPP_DEBUG}>)
    set_property(TARGET CONAN_PKG::jsonformoderncpp PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_JSONFORMODERNCPP}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_JSONFORMODERNCPP_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_JSONFORMODERNCPP_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_JSONFORMODERNCPP_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_JSONFORMODERNCPP_DEBUG}>)
    set_property(TARGET CONAN_PKG::jsonformoderncpp PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_JSONFORMODERNCPP_LIST} ${CONAN_CXX_FLAGS_JSONFORMODERNCPP_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_JSONFORMODERNCPP_RELEASE_LIST} ${CONAN_CXX_FLAGS_JSONFORMODERNCPP_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_JSONFORMODERNCPP_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_JSONFORMODERNCPP_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_JSONFORMODERNCPP_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_JSONFORMODERNCPP_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_JSONFORMODERNCPP_DEBUG_LIST}  ${CONAN_CXX_FLAGS_JSONFORMODERNCPP_DEBUG_LIST}>)


    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_SFML}" "${CONAN_LIB_DIRS_SFML}"
                                  CONAN_PACKAGE_TARGETS_SFML "${CONAN_SYSTEM_LIBS_SFML} CONAN_PKG::freetype CONAN_PKG::stb"
                                  "" sfml)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_SFML_DEBUG}" "${CONAN_LIB_DIRS_SFML_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_SFML_DEBUG "${CONAN_SYSTEM_LIBS_SFML_DEBUG} CONAN_PKG::freetype CONAN_PKG::stb"
                                  "debug" sfml)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_SFML_RELEASE}" "${CONAN_LIB_DIRS_SFML_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_SFML_RELEASE "${CONAN_SYSTEM_LIBS_SFML_RELEASE} CONAN_PKG::freetype CONAN_PKG::stb"
                                  "release" sfml)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_SFML_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_SFML_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_SFML_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_SFML_RELWITHDEBINFO} CONAN_PKG::freetype CONAN_PKG::stb"
                                  "relwithdebinfo" sfml)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_SFML_MINSIZEREL}" "${CONAN_LIB_DIRS_SFML_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_SFML_MINSIZEREL "${CONAN_SYSTEM_LIBS_SFML_MINSIZEREL} CONAN_PKG::freetype CONAN_PKG::stb"
                                  "minsizerel" sfml)

    add_library(CONAN_PKG::sfml INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::sfml PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_SFML} ${CONAN_SHARED_LINKER_FLAGS_SFML_LIST} ${CONAN_EXE_LINKER_FLAGS_SFML_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_SFML_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_SFML_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_SFML_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_SFML_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_SFML_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_SFML_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_SFML_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_SFML_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_SFML_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_SFML_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_SFML_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_SFML_DEBUG_LIST}>
                                                                 CONAN_PKG::freetype CONAN_PKG::stb)
    set_property(TARGET CONAN_PKG::sfml PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_SFML}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_SFML_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_SFML_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_SFML_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_SFML_DEBUG}>)
    set_property(TARGET CONAN_PKG::sfml PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_SFML}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_SFML_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_SFML_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_SFML_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_SFML_DEBUG}>)
    set_property(TARGET CONAN_PKG::sfml PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_SFML_LIST} ${CONAN_CXX_FLAGS_SFML_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_SFML_RELEASE_LIST} ${CONAN_CXX_FLAGS_SFML_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_SFML_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_SFML_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_SFML_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_SFML_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_SFML_DEBUG_LIST}  ${CONAN_CXX_FLAGS_SFML_DEBUG_LIST}>)


    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_OPENSSL}" "${CONAN_LIB_DIRS_OPENSSL}"
                                  CONAN_PACKAGE_TARGETS_OPENSSL "${CONAN_SYSTEM_LIBS_OPENSSL} CONAN_PKG::zlib"
                                  "" OpenSSL)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_OPENSSL_DEBUG}" "${CONAN_LIB_DIRS_OPENSSL_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_OPENSSL_DEBUG "${CONAN_SYSTEM_LIBS_OPENSSL_DEBUG} CONAN_PKG::zlib"
                                  "debug" OpenSSL)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_OPENSSL_RELEASE}" "${CONAN_LIB_DIRS_OPENSSL_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_OPENSSL_RELEASE "${CONAN_SYSTEM_LIBS_OPENSSL_RELEASE} CONAN_PKG::zlib"
                                  "release" OpenSSL)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_OPENSSL_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_OPENSSL_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_OPENSSL_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_OPENSSL_RELWITHDEBINFO} CONAN_PKG::zlib"
                                  "relwithdebinfo" OpenSSL)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_OPENSSL_MINSIZEREL}" "${CONAN_LIB_DIRS_OPENSSL_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_OPENSSL_MINSIZEREL "${CONAN_SYSTEM_LIBS_OPENSSL_MINSIZEREL} CONAN_PKG::zlib"
                                  "minsizerel" OpenSSL)

    add_library(CONAN_PKG::OpenSSL INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::OpenSSL PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_OPENSSL} ${CONAN_SHARED_LINKER_FLAGS_OPENSSL_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENSSL_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_OPENSSL_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_OPENSSL_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENSSL_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_OPENSSL_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_OPENSSL_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENSSL_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_OPENSSL_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_OPENSSL_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENSSL_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_OPENSSL_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_OPENSSL_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_OPENSSL_DEBUG_LIST}>
                                                                 CONAN_PKG::zlib)
    set_property(TARGET CONAN_PKG::OpenSSL PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_OPENSSL}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_OPENSSL_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_OPENSSL_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_OPENSSL_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_OPENSSL_DEBUG}>)
    set_property(TARGET CONAN_PKG::OpenSSL PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_OPENSSL}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_OPENSSL_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_OPENSSL_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_OPENSSL_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_OPENSSL_DEBUG}>)
    set_property(TARGET CONAN_PKG::OpenSSL PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_OPENSSL_LIST} ${CONAN_CXX_FLAGS_OPENSSL_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_OPENSSL_RELEASE_LIST} ${CONAN_CXX_FLAGS_OPENSSL_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_OPENSSL_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_OPENSSL_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_OPENSSL_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_OPENSSL_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_OPENSSL_DEBUG_LIST}  ${CONAN_CXX_FLAGS_OPENSSL_DEBUG_LIST}>)


    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_FREETYPE}" "${CONAN_LIB_DIRS_FREETYPE}"
                                  CONAN_PACKAGE_TARGETS_FREETYPE "${CONAN_SYSTEM_LIBS_FREETYPE} CONAN_PKG::libpng CONAN_PKG::zlib CONAN_PKG::bzip2"
                                  "" freetype)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_FREETYPE_DEBUG}" "${CONAN_LIB_DIRS_FREETYPE_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_FREETYPE_DEBUG "${CONAN_SYSTEM_LIBS_FREETYPE_DEBUG} CONAN_PKG::libpng CONAN_PKG::zlib CONAN_PKG::bzip2"
                                  "debug" freetype)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_FREETYPE_RELEASE}" "${CONAN_LIB_DIRS_FREETYPE_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_FREETYPE_RELEASE "${CONAN_SYSTEM_LIBS_FREETYPE_RELEASE} CONAN_PKG::libpng CONAN_PKG::zlib CONAN_PKG::bzip2"
                                  "release" freetype)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_FREETYPE_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_FREETYPE_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_FREETYPE_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_FREETYPE_RELWITHDEBINFO} CONAN_PKG::libpng CONAN_PKG::zlib CONAN_PKG::bzip2"
                                  "relwithdebinfo" freetype)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_FREETYPE_MINSIZEREL}" "${CONAN_LIB_DIRS_FREETYPE_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_FREETYPE_MINSIZEREL "${CONAN_SYSTEM_LIBS_FREETYPE_MINSIZEREL} CONAN_PKG::libpng CONAN_PKG::zlib CONAN_PKG::bzip2"
                                  "minsizerel" freetype)

    add_library(CONAN_PKG::freetype INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::freetype PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_FREETYPE} ${CONAN_SHARED_LINKER_FLAGS_FREETYPE_LIST} ${CONAN_EXE_LINKER_FLAGS_FREETYPE_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_FREETYPE_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_FREETYPE_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_FREETYPE_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_FREETYPE_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_FREETYPE_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_FREETYPE_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_FREETYPE_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_FREETYPE_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_FREETYPE_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_FREETYPE_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_FREETYPE_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_FREETYPE_DEBUG_LIST}>
                                                                 CONAN_PKG::libpng CONAN_PKG::zlib CONAN_PKG::bzip2)
    set_property(TARGET CONAN_PKG::freetype PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_FREETYPE}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_FREETYPE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_FREETYPE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_FREETYPE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_FREETYPE_DEBUG}>)
    set_property(TARGET CONAN_PKG::freetype PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_FREETYPE}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_FREETYPE_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_FREETYPE_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_FREETYPE_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_FREETYPE_DEBUG}>)
    set_property(TARGET CONAN_PKG::freetype PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_FREETYPE_LIST} ${CONAN_CXX_FLAGS_FREETYPE_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_FREETYPE_RELEASE_LIST} ${CONAN_CXX_FLAGS_FREETYPE_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_FREETYPE_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_FREETYPE_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_FREETYPE_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_FREETYPE_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_FREETYPE_DEBUG_LIST}  ${CONAN_CXX_FLAGS_FREETYPE_DEBUG_LIST}>)


    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_STB}" "${CONAN_LIB_DIRS_STB}"
                                  CONAN_PACKAGE_TARGETS_STB "${CONAN_SYSTEM_LIBS_STB} "
                                  "" stb)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_STB_DEBUG}" "${CONAN_LIB_DIRS_STB_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_STB_DEBUG "${CONAN_SYSTEM_LIBS_STB_DEBUG} "
                                  "debug" stb)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_STB_RELEASE}" "${CONAN_LIB_DIRS_STB_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_STB_RELEASE "${CONAN_SYSTEM_LIBS_STB_RELEASE} "
                                  "release" stb)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_STB_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_STB_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_STB_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_STB_RELWITHDEBINFO} "
                                  "relwithdebinfo" stb)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_STB_MINSIZEREL}" "${CONAN_LIB_DIRS_STB_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_STB_MINSIZEREL "${CONAN_SYSTEM_LIBS_STB_MINSIZEREL} "
                                  "minsizerel" stb)

    add_library(CONAN_PKG::stb INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::stb PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_STB} ${CONAN_SHARED_LINKER_FLAGS_STB_LIST} ${CONAN_EXE_LINKER_FLAGS_STB_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_STB_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_STB_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_STB_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_STB_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_STB_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_STB_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_STB_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_STB_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_STB_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_STB_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_STB_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_STB_DEBUG_LIST}>
                                                                 )
    set_property(TARGET CONAN_PKG::stb PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_STB}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_STB_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_STB_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_STB_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_STB_DEBUG}>)
    set_property(TARGET CONAN_PKG::stb PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_STB}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_STB_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_STB_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_STB_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_STB_DEBUG}>)
    set_property(TARGET CONAN_PKG::stb PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_STB_LIST} ${CONAN_CXX_FLAGS_STB_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_STB_RELEASE_LIST} ${CONAN_CXX_FLAGS_STB_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_STB_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_STB_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_STB_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_STB_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_STB_DEBUG_LIST}  ${CONAN_CXX_FLAGS_STB_DEBUG_LIST}>)


    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_LIBPNG}" "${CONAN_LIB_DIRS_LIBPNG}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG "${CONAN_SYSTEM_LIBS_LIBPNG} CONAN_PKG::zlib"
                                  "" libpng)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_LIBPNG_DEBUG}" "${CONAN_LIB_DIRS_LIBPNG_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_DEBUG "${CONAN_SYSTEM_LIBS_LIBPNG_DEBUG} CONAN_PKG::zlib"
                                  "debug" libpng)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_LIBPNG_RELEASE}" "${CONAN_LIB_DIRS_LIBPNG_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_RELEASE "${CONAN_SYSTEM_LIBS_LIBPNG_RELEASE} CONAN_PKG::zlib"
                                  "release" libpng)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_LIBPNG_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_LIBPNG_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_LIBPNG_RELWITHDEBINFO} CONAN_PKG::zlib"
                                  "relwithdebinfo" libpng)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_LIBPNG_MINSIZEREL}" "${CONAN_LIB_DIRS_LIBPNG_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_LIBPNG_MINSIZEREL "${CONAN_SYSTEM_LIBS_LIBPNG_MINSIZEREL} CONAN_PKG::zlib"
                                  "minsizerel" libpng)

    add_library(CONAN_PKG::libpng INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_LIBPNG} ${CONAN_SHARED_LINKER_FLAGS_LIBPNG_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBPNG_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_LIBPNG_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_LIBPNG_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBPNG_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_LIBPNG_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_LIBPNG_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBPNG_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_LIBPNG_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_LIBPNG_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBPNG_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_LIBPNG_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_LIBPNG_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_LIBPNG_DEBUG_LIST}>
                                                                 CONAN_PKG::zlib)
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_LIBPNG}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_LIBPNG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_LIBPNG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_LIBPNG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_LIBPNG_DEBUG}>)
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_LIBPNG}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_LIBPNG_DEBUG}>)
    set_property(TARGET CONAN_PKG::libpng PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_LIBPNG_LIST} ${CONAN_CXX_FLAGS_LIBPNG_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_LIBPNG_RELEASE_LIST} ${CONAN_CXX_FLAGS_LIBPNG_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_LIBPNG_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_LIBPNG_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_LIBPNG_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_LIBPNG_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_LIBPNG_DEBUG_LIST}  ${CONAN_CXX_FLAGS_LIBPNG_DEBUG_LIST}>)


    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_BZIP2}" "${CONAN_LIB_DIRS_BZIP2}"
                                  CONAN_PACKAGE_TARGETS_BZIP2 "${CONAN_SYSTEM_LIBS_BZIP2} "
                                  "" bzip2)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_BZIP2_DEBUG}" "${CONAN_LIB_DIRS_BZIP2_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_BZIP2_DEBUG "${CONAN_SYSTEM_LIBS_BZIP2_DEBUG} "
                                  "debug" bzip2)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_BZIP2_RELEASE}" "${CONAN_LIB_DIRS_BZIP2_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_BZIP2_RELEASE "${CONAN_SYSTEM_LIBS_BZIP2_RELEASE} "
                                  "release" bzip2)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_BZIP2_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_BZIP2_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_BZIP2_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_BZIP2_RELWITHDEBINFO} "
                                  "relwithdebinfo" bzip2)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_BZIP2_MINSIZEREL}" "${CONAN_LIB_DIRS_BZIP2_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_BZIP2_MINSIZEREL "${CONAN_SYSTEM_LIBS_BZIP2_MINSIZEREL} "
                                  "minsizerel" bzip2)

    add_library(CONAN_PKG::bzip2 INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::bzip2 PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_BZIP2} ${CONAN_SHARED_LINKER_FLAGS_BZIP2_LIST} ${CONAN_EXE_LINKER_FLAGS_BZIP2_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_BZIP2_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_BZIP2_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_BZIP2_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_BZIP2_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_BZIP2_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_BZIP2_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_BZIP2_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_BZIP2_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_BZIP2_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_BZIP2_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_BZIP2_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_BZIP2_DEBUG_LIST}>
                                                                 )
    set_property(TARGET CONAN_PKG::bzip2 PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_BZIP2}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_BZIP2_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_BZIP2_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_BZIP2_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_BZIP2_DEBUG}>)
    set_property(TARGET CONAN_PKG::bzip2 PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_BZIP2}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_BZIP2_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_BZIP2_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_BZIP2_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_BZIP2_DEBUG}>)
    set_property(TARGET CONAN_PKG::bzip2 PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_BZIP2_LIST} ${CONAN_CXX_FLAGS_BZIP2_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_BZIP2_RELEASE_LIST} ${CONAN_CXX_FLAGS_BZIP2_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_BZIP2_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_BZIP2_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_BZIP2_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_BZIP2_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_BZIP2_DEBUG_LIST}  ${CONAN_CXX_FLAGS_BZIP2_DEBUG_LIST}>)


    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_ZLIB}" "${CONAN_LIB_DIRS_ZLIB}"
                                  CONAN_PACKAGE_TARGETS_ZLIB "${CONAN_SYSTEM_LIBS_ZLIB} "
                                  "" zlib)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_ZLIB_DEBUG}" "${CONAN_LIB_DIRS_ZLIB_DEBUG}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_DEBUG "${CONAN_SYSTEM_LIBS_ZLIB_DEBUG} "
                                  "debug" zlib)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_ZLIB_RELEASE}" "${CONAN_LIB_DIRS_ZLIB_RELEASE}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_RELEASE "${CONAN_SYSTEM_LIBS_ZLIB_RELEASE} "
                                  "release" zlib)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_ZLIB_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_ZLIB_RELWITHDEBINFO}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_RELWITHDEBINFO "${CONAN_SYSTEM_LIBS_ZLIB_RELWITHDEBINFO} "
                                  "relwithdebinfo" zlib)
    conan_package_library_targets("${CONAN_LIBS_FRAMEWORKS_ZLIB_MINSIZEREL}" "${CONAN_LIB_DIRS_ZLIB_MINSIZEREL}"
                                  CONAN_PACKAGE_TARGETS_ZLIB_MINSIZEREL "${CONAN_SYSTEM_LIBS_ZLIB_MINSIZEREL} "
                                  "minsizerel" zlib)

    add_library(CONAN_PKG::zlib INTERFACE IMPORTED)

    # Property INTERFACE_LINK_FLAGS do not work, necessary to add to INTERFACE_LINK_LIBRARIES
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_LINK_LIBRARIES ${CONAN_PACKAGE_TARGETS_ZLIB} ${CONAN_SHARED_LINKER_FLAGS_ZLIB_LIST} ${CONAN_EXE_LINKER_FLAGS_ZLIB_LIST}
                                                                 $<$<CONFIG:Release>:${CONAN_PACKAGE_TARGETS_ZLIB_RELEASE} ${CONAN_SHARED_LINKER_FLAGS_ZLIB_RELEASE_LIST} ${CONAN_EXE_LINKER_FLAGS_ZLIB_RELEASE_LIST}>
                                                                 $<$<CONFIG:RelWithDebInfo>:${CONAN_PACKAGE_TARGETS_ZLIB_RELWITHDEBINFO} ${CONAN_SHARED_LINKER_FLAGS_ZLIB_RELWITHDEBINFO_LIST} ${CONAN_EXE_LINKER_FLAGS_ZLIB_RELWITHDEBINFO_LIST}>
                                                                 $<$<CONFIG:MinSizeRel>:${CONAN_PACKAGE_TARGETS_ZLIB_MINSIZEREL} ${CONAN_SHARED_LINKER_FLAGS_ZLIB_MINSIZEREL_LIST} ${CONAN_EXE_LINKER_FLAGS_ZLIB_MINSIZEREL_LIST}>
                                                                 $<$<CONFIG:Debug>:${CONAN_PACKAGE_TARGETS_ZLIB_DEBUG} ${CONAN_SHARED_LINKER_FLAGS_ZLIB_DEBUG_LIST} ${CONAN_EXE_LINKER_FLAGS_ZLIB_DEBUG_LIST}>
                                                                 )
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CONAN_INCLUDE_DIRS_ZLIB}
                                                                      $<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_ZLIB_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_ZLIB_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_ZLIB_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_ZLIB_DEBUG}>)
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_COMPILE_DEFINITIONS ${CONAN_COMPILE_DEFINITIONS_ZLIB}
                                                                      $<$<CONFIG:Release>:${CONAN_COMPILE_DEFINITIONS_ZLIB_RELEASE}>
                                                                      $<$<CONFIG:RelWithDebInfo>:${CONAN_COMPILE_DEFINITIONS_ZLIB_RELWITHDEBINFO}>
                                                                      $<$<CONFIG:MinSizeRel>:${CONAN_COMPILE_DEFINITIONS_ZLIB_MINSIZEREL}>
                                                                      $<$<CONFIG:Debug>:${CONAN_COMPILE_DEFINITIONS_ZLIB_DEBUG}>)
    set_property(TARGET CONAN_PKG::zlib PROPERTY INTERFACE_COMPILE_OPTIONS ${CONAN_C_FLAGS_ZLIB_LIST} ${CONAN_CXX_FLAGS_ZLIB_LIST}
                                                                  $<$<CONFIG:Release>:${CONAN_C_FLAGS_ZLIB_RELEASE_LIST} ${CONAN_CXX_FLAGS_ZLIB_RELEASE_LIST}>
                                                                  $<$<CONFIG:RelWithDebInfo>:${CONAN_C_FLAGS_ZLIB_RELWITHDEBINFO_LIST} ${CONAN_CXX_FLAGS_ZLIB_RELWITHDEBINFO_LIST}>
                                                                  $<$<CONFIG:MinSizeRel>:${CONAN_C_FLAGS_ZLIB_MINSIZEREL_LIST} ${CONAN_CXX_FLAGS_ZLIB_MINSIZEREL_LIST}>
                                                                  $<$<CONFIG:Debug>:${CONAN_C_FLAGS_ZLIB_DEBUG_LIST}  ${CONAN_CXX_FLAGS_ZLIB_DEBUG_LIST}>)

    set(CONAN_TARGETS CONAN_PKG::Poco CONAN_PKG::jsonformoderncpp CONAN_PKG::sfml CONAN_PKG::OpenSSL CONAN_PKG::freetype CONAN_PKG::stb CONAN_PKG::libpng CONAN_PKG::bzip2 CONAN_PKG::zlib)

endmacro()


macro(conan_basic_setup)
    set(options TARGETS NO_OUTPUT_DIRS SKIP_RPATH KEEP_RPATHS SKIP_STD SKIP_FPIC)
    cmake_parse_arguments(ARGUMENTS "${options}" "${oneValueArgs}" "${multiValueArgs}" ${ARGN} )

    if(CONAN_EXPORTED)
        conan_message(STATUS "Conan: called by CMake conan helper")
    endif()

    if(CONAN_IN_LOCAL_CACHE)
        conan_message(STATUS "Conan: called inside local cache")
    endif()

    if(NOT ARGUMENTS_NO_OUTPUT_DIRS)
        conan_message(STATUS "Conan: Adjusting output directories")
        conan_output_dirs_setup()
    endif()

    if(NOT ARGUMENTS_TARGETS)
        conan_message(STATUS "Conan: Using cmake global configuration")
        conan_global_flags()
    else()
        conan_message(STATUS "Conan: Using cmake targets configuration")
        conan_define_targets()
    endif()

    if(ARGUMENTS_SKIP_RPATH)
        # Change by "DEPRECATION" or "SEND_ERROR" when we are ready
        conan_message(WARNING "Conan: SKIP_RPATH is deprecated, it has been renamed to KEEP_RPATHS")
    endif()

    if(NOT ARGUMENTS_SKIP_RPATH AND NOT ARGUMENTS_KEEP_RPATHS)
        # Parameter has renamed, but we keep the compatibility with old SKIP_RPATH
        conan_message(STATUS "Conan: Adjusting default RPATHs Conan policies")
        conan_set_rpath()
    endif()

    if(NOT ARGUMENTS_SKIP_STD)
        conan_message(STATUS "Conan: Adjusting language standard")
        conan_set_std()
    endif()

    if(NOT ARGUMENTS_SKIP_FPIC)
        conan_set_fpic()
    endif()

    conan_check_compiler()
    conan_set_libcxx()
    conan_set_vs_runtime()
    conan_set_find_paths()
    conan_include_build_modules()
    conan_set_find_library_paths()
endmacro()

macro(conan_set_find_paths)
    # CMAKE_MODULE_PATH does not have Debug/Release config, but there are variables
    # CONAN_CMAKE_MODULE_PATH_DEBUG to be used by the consumer
    # CMake can find findXXX.cmake files in the root of packages
    set(CMAKE_MODULE_PATH ${CONAN_CMAKE_MODULE_PATH} ${CMAKE_MODULE_PATH})

    # Make find_package() to work
    set(CMAKE_PREFIX_PATH ${CONAN_CMAKE_MODULE_PATH} ${CMAKE_PREFIX_PATH})

    # Set the find root path (cross build)
    set(CMAKE_FIND_ROOT_PATH ${CONAN_CMAKE_FIND_ROOT_PATH} ${CMAKE_FIND_ROOT_PATH})
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_PROGRAM)
        set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_PROGRAM})
    endif()
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_LIBRARY)
        set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_LIBRARY})
    endif()
    if(CONAN_CMAKE_FIND_ROOT_PATH_MODE_INCLUDE)
        set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ${CONAN_CMAKE_FIND_ROOT_PATH_MODE_INCLUDE})
    endif()
endmacro()

macro(conan_set_find_library_paths)
    # CMAKE_INCLUDE_PATH, CMAKE_LIBRARY_PATH does not have Debug/Release config, but there are variables
    # CONAN_INCLUDE_DIRS_DEBUG/RELEASE CONAN_LIB_DIRS_DEBUG/RELEASE to be used by the consumer
    # For find_library
    set(CMAKE_INCLUDE_PATH ${CONAN_INCLUDE_DIRS} ${CMAKE_INCLUDE_PATH})
    set(CMAKE_LIBRARY_PATH ${CONAN_LIB_DIRS} ${CMAKE_LIBRARY_PATH})
endmacro()

macro(conan_set_vs_runtime)
    if(CONAN_LINK_RUNTIME)
        foreach(flag CMAKE_C_FLAGS_RELEASE CMAKE_CXX_FLAGS_RELEASE
                     CMAKE_C_FLAGS_RELWITHDEBINFO CMAKE_CXX_FLAGS_RELWITHDEBINFO
                     CMAKE_C_FLAGS_MINSIZEREL CMAKE_CXX_FLAGS_MINSIZEREL)
            if(DEFINED ${flag})
                string(REPLACE "/MD" ${CONAN_LINK_RUNTIME} ${flag} "${${flag}}")
            endif()
        endforeach()
        foreach(flag CMAKE_C_FLAGS_DEBUG CMAKE_CXX_FLAGS_DEBUG)
            if(DEFINED ${flag})
                string(REPLACE "/MDd" ${CONAN_LINK_RUNTIME} ${flag} "${${flag}}")
            endif()
        endforeach()
    endif()
endmacro()

macro(conan_flags_setup)
    # Macro maintained for backwards compatibility
    conan_set_find_library_paths()
    conan_global_flags()
    conan_set_rpath()
    conan_set_vs_runtime()
    conan_set_libcxx()
endmacro()

function(conan_message MESSAGE_OUTPUT)
    if(NOT CONAN_CMAKE_SILENT_OUTPUT)
        message(${ARGV${0}})
    endif()
endfunction()

function(conan_find_libraries_abs_path libraries package_libdir libraries_abs_path)
    foreach(_LIBRARY_NAME ${libraries})
        unset(CONAN_FOUND_LIBRARY CACHE)
        find_library(CONAN_FOUND_LIBRARY NAME ${_LIBRARY_NAME} PATHS ${package_libdir}
                     NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
        if(CONAN_FOUND_LIBRARY)
            conan_message(STATUS "Library ${_LIBRARY_NAME} found ${CONAN_FOUND_LIBRARY}")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${CONAN_FOUND_LIBRARY})
        else()
            conan_message(STATUS "Library ${_LIBRARY_NAME} not found in package, might be system one")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIBRARY_NAME})
        endif()
    endforeach()
    unset(CONAN_FOUND_LIBRARY CACHE)
    set(${libraries_abs_path} ${CONAN_FULLPATH_LIBS} PARENT_SCOPE)
endfunction()

function(conan_package_library_targets libraries package_libdir libraries_abs_path deps build_type package_name)
    foreach(_LIBRARY_NAME ${libraries})
        unset(CONAN_FOUND_LIBRARY CACHE)
        find_library(CONAN_FOUND_LIBRARY NAME ${_LIBRARY_NAME} PATHS ${package_libdir}
                     NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
        if(CONAN_FOUND_LIBRARY)
            conan_message(STATUS "Library ${_LIBRARY_NAME} found ${CONAN_FOUND_LIBRARY}")
            set(_LIB_NAME CONAN_LIB::${package_name}_${_LIBRARY_NAME}${build_type})
            add_library(${_LIB_NAME} UNKNOWN IMPORTED)
            set_target_properties(${_LIB_NAME} PROPERTIES IMPORTED_LOCATION ${CONAN_FOUND_LIBRARY})
            string(REPLACE " " ";" deps_list "${deps}")
            set_property(TARGET ${_LIB_NAME} PROPERTY INTERFACE_LINK_LIBRARIES ${deps_list})
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIB_NAME})
        else()
            conan_message(STATUS "Library ${_LIBRARY_NAME} not found in package, might be system one")
            set(CONAN_FULLPATH_LIBS ${CONAN_FULLPATH_LIBS} ${_LIBRARY_NAME})
        endif()
    endforeach()
    unset(CONAN_FOUND_LIBRARY CACHE)
    set(${libraries_abs_path} ${CONAN_FULLPATH_LIBS} PARENT_SCOPE)
endfunction()

macro(conan_set_libcxx)
    if(DEFINED CONAN_LIBCXX)
        conan_message(STATUS "Conan: C++ stdlib: ${CONAN_LIBCXX}")
        if(CONAN_COMPILER STREQUAL "clang" OR CONAN_COMPILER STREQUAL "apple-clang")
            if(CONAN_LIBCXX STREQUAL "libstdc++" OR CONAN_LIBCXX STREQUAL "libstdc++11" )
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libstdc++")
            elseif(CONAN_LIBCXX STREQUAL "libc++")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
            endif()
        endif()
        if(CONAN_COMPILER STREQUAL "sun-cc")
            if(CONAN_LIBCXX STREQUAL "libCstd")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=Cstd")
            elseif(CONAN_LIBCXX STREQUAL "libstdcxx")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stdcxx4")
            elseif(CONAN_LIBCXX STREQUAL "libstlport")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stlport4")
            elseif(CONAN_LIBCXX STREQUAL "libstdc++")
                set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -library=stdcpp")
            endif()
        endif()
        if(CONAN_LIBCXX STREQUAL "libstdc++11")
            add_definitions(-D_GLIBCXX_USE_CXX11_ABI=1)
        elseif(CONAN_LIBCXX STREQUAL "libstdc++")
            add_definitions(-D_GLIBCXX_USE_CXX11_ABI=0)
        endif()
    endif()
endmacro()

macro(conan_set_std)
    # Do not warn "Manually-specified variables were not used by the project"
    set(ignorevar "${CONAN_STD_CXX_FLAG}${CONAN_CMAKE_CXX_STANDARD}${CONAN_CMAKE_CXX_EXTENSIONS}")
    if (CMAKE_VERSION VERSION_LESS "3.1" OR
        (CMAKE_VERSION VERSION_LESS "3.12" AND ("${CONAN_CMAKE_CXX_STANDARD}" STREQUAL "20" OR "${CONAN_CMAKE_CXX_STANDARD}" STREQUAL "gnu20")))
    if(CONAN_STD_CXX_FLAG)
        conan_message(STATUS "Conan setting CXX_FLAGS flags: ${CONAN_STD_CXX_FLAG}")
        set(CMAKE_CXX_FLAGS "${CONAN_STD_CXX_FLAG} ${CMAKE_CXX_FLAGS}")
    endif()
    else()
        if(CONAN_CMAKE_CXX_STANDARD)
            conan_message(STATUS "Conan setting CPP STANDARD: ${CONAN_CMAKE_CXX_STANDARD} WITH EXTENSIONS ${CONAN_CMAKE_CXX_EXTENSIONS}")
            set(CMAKE_CXX_STANDARD ${CONAN_CMAKE_CXX_STANDARD})
            set(CMAKE_CXX_EXTENSIONS ${CONAN_CMAKE_CXX_EXTENSIONS})
        endif()
    endif()
endmacro()

macro(conan_set_rpath)
    if(APPLE)
        # https://cmake.org/Wiki/CMake_RPATH_handling
        # CONAN GUIDE: All generated libraries should have the id and dependencies to other
        # dylibs without path, just the name, EX:
        # libMyLib1.dylib:
        #     libMyLib1.dylib (compatibility version 0.0.0, current version 0.0.0)
        #     libMyLib0.dylib (compatibility version 0.0.0, current version 0.0.0)
        #     /usr/lib/libc++.1.dylib (compatibility version 1.0.0, current version 120.0.0)
        #     /usr/lib/libSystem.B.dylib (compatibility version 1.0.0, current version 1197.1.1)
        set(CMAKE_SKIP_RPATH 1)  # AVOID RPATH FOR *.dylib, ALL LIBS BETWEEN THEM AND THE EXE
                                 # SHOULD BE ON THE LINKER RESOLVER PATH (./ IS ONE OF THEM)
        # Policy CMP0068
        # We want the old behavior, in CMake >= 3.9 CMAKE_SKIP_RPATH won't affect the install_name in OSX
        set(CMAKE_INSTALL_NAME_DIR "")
    endif()
endmacro()

macro(conan_set_fpic)
    if(DEFINED CONAN_CMAKE_POSITION_INDEPENDENT_CODE)
        conan_message(STATUS "Conan: Adjusting fPIC flag (${CONAN_CMAKE_POSITION_INDEPENDENT_CODE})")
        set(CMAKE_POSITION_INDEPENDENT_CODE ${CONAN_CMAKE_POSITION_INDEPENDENT_CODE})
    endif()
endmacro()

macro(conan_output_dirs_setup)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/bin)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_DEBUG ${CMAKE_RUNTIME_OUTPUT_DIRECTORY})

    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})
    set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY_DEBUG ${CMAKE_ARCHIVE_OUTPUT_DIRECTORY})

    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/lib)
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELEASE ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_RELWITHDEBINFO ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_MINSIZEREL ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
    set(CMAKE_LIBRARY_OUTPUT_DIRECTORY_DEBUG ${CMAKE_LIBRARY_OUTPUT_DIRECTORY})
endmacro()

macro(conan_split_version VERSION_STRING MAJOR MINOR)
    #make a list from the version string
    string(REPLACE "." ";" VERSION_LIST "${VERSION_STRING}")

    #write output values
    list(LENGTH VERSION_LIST _version_len)
    list(GET VERSION_LIST 0 ${MAJOR})
    if(${_version_len} GREATER 1)
        list(GET VERSION_LIST 1 ${MINOR})
    endif()
endmacro()

macro(conan_error_compiler_version)
    message(FATAL_ERROR "Detected a mismatch for the compiler version between your conan profile settings and CMake: 
"
                        "Compiler version specified in your conan profile: ${CONAN_COMPILER_VERSION}
"
                        "Compiler version detected in CMake: ${VERSION_MAJOR}.${VERSION_MINOR}
"
                        "Please check your conan profile settings (conan profile show [default|your_profile_name])"
           )
endmacro()

set(_CONAN_CURRENT_DIR ${CMAKE_CURRENT_LIST_DIR})
function(conan_get_compiler CONAN_INFO_COMPILER CONAN_INFO_COMPILER_VERSION)
    conan_message(STATUS "Current conanbuildinfo.cmake directory: " ${_CONAN_CURRENT_DIR})
    if(NOT EXISTS ${_CONAN_CURRENT_DIR}/conaninfo.txt)
        conan_message(STATUS "WARN: conaninfo.txt not found")
        return()
    endif()

    file (READ "${_CONAN_CURRENT_DIR}/conaninfo.txt" CONANINFO)

    string(REGEX MATCH "compiler=([-A-Za-z0-9_ ]+)" _MATCHED ${CONANINFO})
    if(DEFINED CMAKE_MATCH_1)
        string(STRIP "${CMAKE_MATCH_1}" _CONAN_INFO_COMPILER)
        set(${CONAN_INFO_COMPILER} ${_CONAN_INFO_COMPILER} PARENT_SCOPE)
    endif()

    string(REGEX MATCH "compiler.version=([-A-Za-z0-9_.]+)" _MATCHED ${CONANINFO})
    if(DEFINED CMAKE_MATCH_1)
        string(STRIP "${CMAKE_MATCH_1}" _CONAN_INFO_COMPILER_VERSION)
        set(${CONAN_INFO_COMPILER_VERSION} ${_CONAN_INFO_COMPILER_VERSION} PARENT_SCOPE)
    endif()
endfunction()

function(check_compiler_version)
    conan_split_version(${CMAKE_CXX_COMPILER_VERSION} VERSION_MAJOR VERSION_MINOR)
    if(DEFINED CONAN_SETTINGS_COMPILER_TOOLSET)
       conan_message(STATUS "Conan: Skipping compiler check: Declared 'compiler.toolset'")
       return()
    endif()
    if(CMAKE_CXX_COMPILER_ID MATCHES MSVC)
        # MSVC_VERSION is defined since 2.8.2 at least
        # https://cmake.org/cmake/help/v2.8.2/cmake.html#variable:MSVC_VERSION
        # https://cmake.org/cmake/help/v3.14/variable/MSVC_VERSION.html
        if(
            # 1920-1929 = VS 16.0 (v142 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "16" AND NOT((MSVC_VERSION GREATER 1919) AND (MSVC_VERSION LESS 1930))) OR
            # 1910-1919 = VS 15.0 (v141 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "15" AND NOT((MSVC_VERSION GREATER 1909) AND (MSVC_VERSION LESS 1920))) OR
            # 1900      = VS 14.0 (v140 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "14" AND NOT(MSVC_VERSION EQUAL 1900)) OR
            # 1800      = VS 12.0 (v120 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "12" AND NOT VERSION_MAJOR STREQUAL "18") OR
            # 1700      = VS 11.0 (v110 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "11" AND NOT VERSION_MAJOR STREQUAL "17") OR
            # 1600      = VS 10.0 (v100 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "10" AND NOT VERSION_MAJOR STREQUAL "16") OR
            # 1500      = VS  9.0 (v90 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "9" AND NOT VERSION_MAJOR STREQUAL "15") OR
            # 1400      = VS  8.0 (v80 toolset)
            (CONAN_COMPILER_VERSION STREQUAL "8" AND NOT VERSION_MAJOR STREQUAL "14") OR
            # 1310      = VS  7.1, 1300      = VS  7.0
            (CONAN_COMPILER_VERSION STREQUAL "7" AND NOT VERSION_MAJOR STREQUAL "13") OR
            # 1200      = VS  6.0
            (CONAN_COMPILER_VERSION STREQUAL "6" AND NOT VERSION_MAJOR STREQUAL "12") )
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "gcc")
        set(_CHECK_VERSION ${VERSION_MAJOR}.${VERSION_MINOR})
        if(NOT ${CONAN_COMPILER_VERSION} VERSION_LESS 5.0)
            conan_message(STATUS "Conan: Compiler GCC>=5, checking major version ${CONAN_COMPILER_VERSION}")
            conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
            if("${CONAN_COMPILER_MINOR}" STREQUAL "")
                set(_CHECK_VERSION ${VERSION_MAJOR})
            endif()
        endif()
        conan_message(STATUS "Conan: Checking correct version: ${_CHECK_VERSION}")
        if(NOT ${_CHECK_VERSION} VERSION_EQUAL CONAN_COMPILER_VERSION)
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "clang")
        set(_CHECK_VERSION ${VERSION_MAJOR}.${VERSION_MINOR})
        if(NOT ${CONAN_COMPILER_VERSION} VERSION_LESS 8.0)
            conan_message(STATUS "Conan: Compiler Clang>=8, checking major version ${CONAN_COMPILER_VERSION}")
            conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
            if("${CONAN_COMPILER_MINOR}" STREQUAL "")
                set(_CHECK_VERSION ${VERSION_MAJOR})
            endif()
        endif()
        conan_message(STATUS "Conan: Checking correct version: ${_CHECK_VERSION}")
        if(NOT ${_CHECK_VERSION} VERSION_EQUAL CONAN_COMPILER_VERSION)
            conan_error_compiler_version()
        endif()
    elseif(CONAN_COMPILER STREQUAL "apple-clang" OR CONAN_COMPILER STREQUAL "sun-cc")
        conan_split_version(${CONAN_COMPILER_VERSION} CONAN_COMPILER_MAJOR CONAN_COMPILER_MINOR)
        if(NOT ${VERSION_MAJOR}.${VERSION_MINOR} VERSION_EQUAL ${CONAN_COMPILER_MAJOR}.${CONAN_COMPILER_MINOR})
           conan_error_compiler_version()
        endif()
    else()
        conan_message(STATUS "WARN: Unknown compiler '${CONAN_COMPILER}', skipping the version check...")
    endif()
endfunction()

function(conan_check_compiler)
    if(CONAN_DISABLE_CHECK_COMPILER)
        conan_message(STATUS "WARN: Disabled conan compiler checks")
        return()
    endif()
    if(NOT DEFINED CMAKE_CXX_COMPILER_ID)
        if(DEFINED CMAKE_C_COMPILER_ID)
            conan_message(STATUS "This project seems to be plain C, using '${CMAKE_C_COMPILER_ID}' compiler")
            set(CMAKE_CXX_COMPILER_ID ${CMAKE_C_COMPILER_ID})
            set(CMAKE_CXX_COMPILER_VERSION ${CMAKE_C_COMPILER_VERSION})
        else()
            message(FATAL_ERROR "This project seems to be plain C, but no compiler defined")
        endif()
    endif()
    if(NOT CMAKE_CXX_COMPILER_ID AND NOT CMAKE_C_COMPILER_ID)
        # This use case happens when compiler is not identified by CMake, but the compilers are there and work
        conan_message(STATUS "*** WARN: CMake was not able to identify a C or C++ compiler ***")
        conan_message(STATUS "*** WARN: Disabling compiler checks. Please make sure your settings match your environment ***")
        return()
    endif()
    if(NOT DEFINED CONAN_COMPILER)
        conan_get_compiler(CONAN_COMPILER CONAN_COMPILER_VERSION)
        if(NOT DEFINED CONAN_COMPILER)
            conan_message(STATUS "WARN: CONAN_COMPILER variable not set, please make sure yourself that "
                          "your compiler and version matches your declared settings")
            return()
        endif()
    endif()

    if(NOT CMAKE_HOST_SYSTEM_NAME STREQUAL ${CMAKE_SYSTEM_NAME})
        set(CROSS_BUILDING 1)
    endif()

    # If using VS, verify toolset
    if (CONAN_COMPILER STREQUAL "Visual Studio")
        if (CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "LLVM" OR
            CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "clang")
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "Clang")
        elseif (CONAN_SETTINGS_COMPILER_TOOLSET MATCHES "Intel")
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "Intel")
        else()
            set(EXPECTED_CMAKE_CXX_COMPILER_ID "MSVC")
        endif()

        if (NOT CMAKE_CXX_COMPILER_ID MATCHES ${EXPECTED_CMAKE_CXX_COMPILER_ID})
            message(FATAL_ERROR "Incorrect '${CONAN_COMPILER}'. Toolset specifies compiler as '${EXPECTED_CMAKE_CXX_COMPILER_ID}' "
                                "but CMake detected '${CMAKE_CXX_COMPILER_ID}'")
        endif()

    # Avoid checks when cross compiling, apple-clang crashes because its APPLE but not apple-clang
    # Actually CMake is detecting "clang" when you are using apple-clang, only if CMP0025 is set to NEW will detect apple-clang
    elseif((CONAN_COMPILER STREQUAL "gcc" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "GNU") OR
        (CONAN_COMPILER STREQUAL "apple-clang" AND NOT CROSS_BUILDING AND (NOT APPLE OR NOT CMAKE_CXX_COMPILER_ID MATCHES "Clang")) OR
        (CONAN_COMPILER STREQUAL "clang" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "Clang") OR
        (CONAN_COMPILER STREQUAL "sun-cc" AND NOT CMAKE_CXX_COMPILER_ID MATCHES "SunPro") )
        message(FATAL_ERROR "Incorrect '${CONAN_COMPILER}', is not the one detected by CMake: '${CMAKE_CXX_COMPILER_ID}'")
    endif()


    if(NOT DEFINED CONAN_COMPILER_VERSION)
        conan_message(STATUS "WARN: CONAN_COMPILER_VERSION variable not set, please make sure yourself "
                             "that your compiler version matches your declared settings")
        return()
    endif()
    check_compiler_version()
endfunction()

macro(conan_set_flags build_type)
    set(CMAKE_CXX_FLAGS${build_type} "${CMAKE_CXX_FLAGS${build_type}} ${CONAN_CXX_FLAGS${build_type}}")
    set(CMAKE_C_FLAGS${build_type} "${CMAKE_C_FLAGS${build_type}} ${CONAN_C_FLAGS${build_type}}")
    set(CMAKE_SHARED_LINKER_FLAGS${build_type} "${CMAKE_SHARED_LINKER_FLAGS${build_type}} ${CONAN_SHARED_LINKER_FLAGS${build_type}}")
    set(CMAKE_EXE_LINKER_FLAGS${build_type} "${CMAKE_EXE_LINKER_FLAGS${build_type}} ${CONAN_EXE_LINKER_FLAGS${build_type}}")
endmacro()

macro(conan_global_flags)
    if(CONAN_SYSTEM_INCLUDES)
        include_directories(SYSTEM ${CONAN_INCLUDE_DIRS}
                                   "$<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_RELEASE}>"
                                   "$<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_RELWITHDEBINFO}>"
                                   "$<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_MINSIZEREL}>"
                                   "$<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DEBUG}>")
    else()
        include_directories(${CONAN_INCLUDE_DIRS}
                            "$<$<CONFIG:Release>:${CONAN_INCLUDE_DIRS_RELEASE}>"
                            "$<$<CONFIG:RelWithDebInfo>:${CONAN_INCLUDE_DIRS_RELWITHDEBINFO}>"
                            "$<$<CONFIG:MinSizeRel>:${CONAN_INCLUDE_DIRS_MINSIZEREL}>"
                            "$<$<CONFIG:Debug>:${CONAN_INCLUDE_DIRS_DEBUG}>")
    endif()

    link_directories(${CONAN_LIB_DIRS})

    conan_find_libraries_abs_path("${CONAN_LIBS_DEBUG}" "${CONAN_LIB_DIRS_DEBUG}"
                                  CONAN_LIBS_DEBUG)
    conan_find_libraries_abs_path("${CONAN_LIBS_RELEASE}" "${CONAN_LIB_DIRS_RELEASE}"
                                  CONAN_LIBS_RELEASE)
    conan_find_libraries_abs_path("${CONAN_LIBS_RELWITHDEBINFO}" "${CONAN_LIB_DIRS_RELWITHDEBINFO}"
                                  CONAN_LIBS_RELWITHDEBINFO)
    conan_find_libraries_abs_path("${CONAN_LIBS_MINSIZEREL}" "${CONAN_LIB_DIRS_MINSIZEREL}"
                                  CONAN_LIBS_MINSIZEREL)

    add_compile_options(${CONAN_DEFINES}
                        "$<$<CONFIG:Debug>:${CONAN_DEFINES_DEBUG}>"
                        "$<$<CONFIG:Release>:${CONAN_DEFINES_RELEASE}>"
                        "$<$<CONFIG:RelWithDebInfo>:${CONAN_DEFINES_RELWITHDEBINFO}>"
                        "$<$<CONFIG:MinSizeRel>:${CONAN_DEFINES_MINSIZEREL}>")

    conan_set_flags("")
    conan_set_flags("_RELEASE")
    conan_set_flags("_DEBUG")

endmacro()

macro(conan_target_link_libraries target)
    if(CONAN_TARGETS)
        target_link_libraries(${target} ${CONAN_TARGETS})
    else()
        target_link_libraries(${target} ${CONAN_LIBS})
        foreach(_LIB ${CONAN_LIBS_RELEASE})
            target_link_libraries(${target} optimized ${_LIB})
        endforeach()
        foreach(_LIB ${CONAN_LIBS_DEBUG})
            target_link_libraries(${target} debug ${_LIB})
        endforeach()
    endif()
endmacro()

macro(conan_include_build_modules)
    if(CMAKE_BUILD_TYPE)
        if(${CMAKE_BUILD_TYPE} MATCHES "Debug")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_DEBUG} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "Release")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_RELEASE} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "RelWithDebInfo")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_RELWITHDEBINFO} ${CONAN_BUILD_MODULES_PATHS})
        elseif(${CMAKE_BUILD_TYPE} MATCHES "MinSizeRel")
            set(CONAN_BUILD_MODULES_PATHS ${CONAN_BUILD_MODULES_PATHS_MINSIZEREL} ${CONAN_BUILD_MODULES_PATHS})
        endif()
    endif()

    foreach(_BUILD_MODULE_PATH ${CONAN_BUILD_MODULES_PATHS})
        include(${_BUILD_MODULE_PATH})
    endforeach()
endmacro()


### Definition of user declared vars (user_info) ###


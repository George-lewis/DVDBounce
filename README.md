# DVDBounce

##### Now you can finally have that retro DVD screensaver on your PC.

![](video.gif)

## Installation

### Option One: Download a precompiled release
Note, this only applies to you if:
- Your architecture is x64
- You use Windows or Linux

Note: Windows users you will need the [Microsoft Visual C++ Redistributable](https://support.microsoft.com/en-ca/help/2977003/the-latest-supported-visual-c-downloads)

Releases can be found under the [release tab](https://github.com/George-lewis/DVDBounce/releases)

### Option Two: Compile

**DVDBounce** is made in C++ with *SFML* using the package manager *Conan* and build tool *CMake*, for ease of compilation I recommend acquiring all of these tools.

1. Acquire a C++ compiler (Windows users: I recommend [MSVC](https://visualstudio.microsoft.com/downloads/), Look for "build tools"), Conan, and CMake (Windows users: This comes with the MSVC build tools)
   1. Configure the *bincrafters* repository with Conan: `conan remote add bincrafters https://api.bintray.com/conan/bincrafters/public-conan`
2. Clone the repo
3. Install dependencies
   1. Create a conan folder in the repo
   2. `cd conan && conan install .. --build missing`
      - Windows users: If you get settings errors make the appropriate changes in `C:\Users\[YOUR_USER]\.conan\profiles\default`, you may need to specify what compiler you're using and what version. If you're using 2019 MSVC the version is `16`
      - You can also acquire the dependencies on your own if you like, however you will then have to adjust the CMake file accordingly
4. compile
   1. Create a build folder
   2. You can run `c.sh` if you're on a unix system otherwise:
      1. `cd build && cmake .. && cmake --build . && bin/dvdbounce`
      2. Note: It's important that the resources folder is in the same directory as the executable, i.e. the `bin` folder
      3. Windows users: You may need to run `cmake --build . --config Release` if you get issues like `LNK2038 mismatch detected for _ITERATOR_DEBUG_LEVEL: value 2 doesn't match value 0`

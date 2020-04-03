# Contributing

### Code Structure

#### main.h / main.cpp
- Main.h contains one constant: `VERSION` which stores the version of the program
- Main.cpp links all the components together, it:
  - Parses the command line using `DVD::Config`
  - Parses the config file using `DVD::Config`
  - Creates an `sf::RenderWindow` (the window)
  - Contains the main event loop which dispatches keyboard events and window-events to the `DVD::Logo` as appropriate

#### logo.h / logo.cpp
- Contains the main drawing logic / boundary checking logic of the program
- The Logo class encapsulates:
  - The location of the logo
  - The direction of the logo
  - The various different images (colors) the logo can be and which one it currently is
  - The logic required to move the logo on each tick and check the bounds etc

#### config.h / config.cpp
- This is a static class responsible for handling everything configuration related
- Can parse the command line into the options structure (it's an `std::unordered_map`)
- Can parse an arbitrary config file (can be specified in the command line parameters)
- Note: It's important that the command line be parsed before the config file
- This class also contains the platform-appropriate path separator

#### util.h / util.cpp
- This class contains utility functions that aren't particularly specific to anything else
- For now this means just one function: ``normalize(sf::Vector2f&)`
  - The function takes a vector and turns it into a unit vector
  - This is important for calculating the direction vector of the Logo

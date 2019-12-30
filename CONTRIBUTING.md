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

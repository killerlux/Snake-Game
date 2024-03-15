# Assembly Snake Game

A classic Snake game implemented in MIPS assembly language, featuring colorful graphics, obstacles, and an increasing difficulty level as the game progresses. The game utilizes direct memory access for rendering graphics, handling keyboard input for snake movement, and implementing game logic entirely in assembly.

## Table of Contents

- [Features](#features)
- [How to Run](#how-to-run)
- [Gameplay Instructions](#gameplay-instructions)
- [Scoring](#scoring)
- [Dependencies](#dependencies)
- [License](#license)
- [Credits](#credits)

## Features

- **Classic Gameplay:** Navigate the snake around the screen, eating candies to grow in length.
- **Obstacles:** Avoid hitting walls and obstacles that appear as you eat more candies.
- **Colorful Graphics:** Utilizes direct memory access to display colorful graphics and animations.
- **Difficulty Increase:** The game progressively becomes more challenging as the snake grows and more obstacles appear.

## How to Run

To run this game, you need a MIPS simulator that supports direct memory access for graphics, such as MARS MIPS or QtSPIM. Follow these steps:

1. **Download a MIPS Simulator:**
   - [MARS MIPS Simulator](http://courses.missouristate.edu/KenVollmar/mars/)
   - [QtSPIM](http://spimsimulator.sourceforge.net/)
2. **Load the Game:**
   - Open the MIPS simulator and load the `.asm` file for the game.
3. **Configure Settings (If Necessary):**
   - Ensure that the simulator is configured to support direct memory access and keyboard inputs.
4. **Run the Game:**
   - Assemble and run the game within the simulator.

## Gameplay Instructions

- **Start the Game:** Press any key to start the game.
- **Movement:**
  - Use the `W` (or `Z` on AZERTY keyboards) and `S` keys to move the snake up and down.
  - Use the `A` and `D` keys to move the snake left and right.
- **Avoid Obstacles:** Do not collide with the walls, obstacles, or the snake's own body.
- **Eat Candies:** Increase your score and the snake's length by moving over candies.

## Scoring

- Each candy eaten increases your score.
- The game ends when the snake collides with an obstacle, the wall, or itself.
- Your final score will be displayed at the end of the game.

## Dependencies

- A MIPS simulator capable of simulating graphics and keyboard input is required to run this game.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Credits

- **Author:** Aymen Kouskoussi , Elené Kardava 
- **Acknowledgments:** Special thanks to the MIPS assembly community and the developers of the MIPS simulators used to run and test this game.

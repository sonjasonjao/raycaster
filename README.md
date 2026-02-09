# Raycaster - a a simple 3D-style maze renderer
This project was carried out as a team of two with <a href="https://github.com/kaloliini">@kaloliina</a>.\
We build the program for a 42 curriculum project called cub3d at Hive Helsinki.
The goal of this project was to build "a dynamic view inside a maze", a 3D-looking maze renderer in 2D, inspired by the Wolfenstein 3D game.
<br><br>
### Quick Start 🚀
#### 1. Clone the repository:
```bash
git clone https://github.com/sonjasonjao/raycaster.git
cd raycaster
```
#### 2. Build
**Prerequisites (depending on your system)**
- Linux (Ubuntu/Debian):
```bash
sudo apt install libglfw3-dev libgl1-mesa-dev libegl1-mesa-dev libxrandr-dev libxinerama-dev libxcursor-dev libxi-dev cmake
```
- macOS (Apple Silicon or Intel):
```bash
brew install glfw cmake
```
#### 3. Run:
./raycaster \<path to map file>, for example
```bash
./raycaster maps/basic_map.cub
```
#### 4. Explore the maze!
- Move around with W, A, S, D keys
- Rotate using left and right arrow keys
- Press m to enable or disable mouse rotation mode
<br><br>
### My areas of responsibility
- Implementation of the raycasting logic with wall texture mapping
- Rendering the first-person scene with sprites
<br><br>
### Personal learnings
- Basic principles of raycasting
- Strengthening my skills in using a minimal graphic library

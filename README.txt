PAC-MAN ARCADE EDITION
======================

Java Swing and AWT arcade game with a retro PAC-MAN-inspired interface.

TABLE OF CONTENTS
-----------------

1. Download for Windows
2. Installation and Running
3. Controls
4. Optional Assets
5. Run from Source
6. Rebuild the Windows Executable
7. Project Structure
8. Technology
9. Developers


1. DOWNLOAD FOR WINDOWS
-----------------------

Download: PacMan.exe

The Windows executable includes its own Java runtime. You do not need to install
Java before using the downloaded game.

IMPORTANT:
Keep PacMan.exe in the project directory with app\ and runtime\.
The executable depends on the bundled runtime\ and app\ files.

PAC-MAN\
├── PacMan.exe
├── app\
└── runtime\


2. INSTALLATION AND RUNNING
---------------------------

Windows Executable

1. Download or copy PacMan.exe together with app\ and runtime\.
2. Keep PacMan.exe, app\, and runtime\ together.
3. Open the project folder.
4. Double-click PacMan.exe.

No Java installation is required for the packaged Windows application.


3. CONTROLS
-----------

Key                 Action
-----------------   ---------------------------
Arrow keys / WASD   Movement
P                   Pause
Enter / Esc         Close a window


4. OPTIONAL ASSETS
------------------

Optional custom assets can be placed in the corresponding code\images\
or code\fonts\ directories.

Optional Images

File                         Purpose
---------------------------  -----------------------------------------------
code\images\heart.png        Replaces the life icon. If missing, a heart
                             is drawn in the code.
code\images\dev1.png         About Us photo for MD UDOY HOSSAIN JOY.
code\images\dev2.png         About Us photo for IMTIYAZ ALI.
code\images\dev3.png         About Us photo for JUNAED AHMED.
code\images\dev3.JPG         Alternate filename supported for JUNAED AHMED.

If a developer photo is missing, the game displays the corresponding letter:
U, I, or J.

Bundled Game Images

The code\images\ directory contains the game sprites and application graphics,
including Pac-Man movement sprites, ghosts, the frightened ghost sprite, food,
power food, developer photos, and application icons.

Optional Fonts

File                                    Purpose
--------------------------------------  ----------------------------------
code\fonts\PressStart2P-Regular.ttf     Retro pixel-style font.
code\fonts\VT323-Regular.ttf            Retro terminal-style font.

These fonts originate from the Google Fonts versions used in the project's
retro arcade design. If they are unavailable, the game uses a plain monospaced
font as a fallback.


5. RUN FROM SOURCE
------------------

Requirements:
- Java 11 or newer
- A command prompt opened in the project directory

Run the source directly:

  cd code
  java PacManGame.java

Or compile and run the Java class:

  cd code
  javac PacManGame.java
  java PacManGame

Run commands from inside the code\ directory so the application can find
code\images\ and code\fonts\.


6. REBUILD THE WINDOWS EXECUTABLE
---------------------------------

The project includes build-exe.bat, which compiles the Java source, packages
the assets, bundles the Java runtime, and creates the Windows application image.

From Windows Command Prompt at the project root:

  build-exe.bat

The rebuilt application will be generated at:

  PacMan.exe

The script requires a compatible JDK 17 installation at the configured location.
If JDK 17 is installed elsewhere, update the JDK17 path in build-exe.bat before
rebuilding.


7. PROJECT STRUCTURE
--------------------

PAC-MAN\
├── build-exe.bat
├── README.txt
├── PacMan.exe
├── app\
├── runtime\
├── code\
│   ├── PacManGame.java
│   ├── fonts\
│   └── images\


8. TECHNOLOGY
-------------

- Java
- Java Swing
- Abstract Window Toolkit (AWT)
- Java 2D graphics


9. DEVELOPERS
-------------

- MD UDOY HOSSAIN JOY
- IMTIYAZ ALI
- JUNAED AHMED

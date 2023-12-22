# Advanced and Robot Programming - Assignment 1 #
## Authors: Mobina Alinaghian & Sayna Arghideh ##

### Introduction ###
In this project, we will create a robot with dynamic movements within a designated area, controllable using keyboard keys. We will utilize the NCurses library for this simulation. The components of this project are as follows:
- `Master:` In this simulation, the main part is the master component. It plays a crucial role in controlling the drone operation. It starts different tasks like watch-dog, server, drone, and window, each in its own process. These tasks communicate with each other through pipes, making sure they share important information smoothly. The master component also handles the careful ending of these processes, ensuring the entire simulated system works well together.
- `Server:` In our simulation, the server component plays a key role in coordinating the drone's movements. It sets up shared memory segments, creating a pathway for processes to share important coordinates and attributes. By regularly updating and communicating smoothly with the watchdog process using signals, the server ensures that the simulated drone responds well and moves seamlessly. Managing process IDs through PID files also enhances effective communication and coordination between processes in our simulated environment.
- `Window:` The window code initializes a shared memory segment and utilizes the NCurses library to create a simple graphical representation of a drone's movement. It achieves this by reading the drone's position from shared memory, displaying the drone's symbol ('+') on the terminal, and periodically refreshing the display based on shared memory updates. The program also includes functionalities for logging process information, handling signals, and drawing borders to frame the simulated drone working area.
- `Drone:` In this section, the robot's physical movement is simulated. The code employs numerical calculations, shared memory communication, and signal handling to simulate the drone's movement, offering a structured framework for further development or integration into a larger system. Initially, Euler’s method was used for simulating the robot's movement; however, due to divergence issues, we transitioned to the Taylor series expansion, incorporating constant acceleration for more stable and accurate results.
- `Watch-dog:` The watchdog keeps a close eye on many tasks in the simulation.It checks the time, looks at logs, and sends signals when needed. If we don't press any keys for a set time, the watchdog gives us a message. It keeps checking processes regularly. If things take too long, it stops them to make sure the simulated drone system stays reliable and strong.

### How to install and run ###
- Install the ncurses library:
```console
sudo apt-get install libncurses-dev
```
- Open the terminal
- clone this repository to your desired location:
<pre><code>git clone https://github.com/sm-sayna-mobina/ARP-1.git</code></pre>
-Go to the folder:
<pre><code>cd ARP-1/arp_project</code></pre>
- Run the project:
 <pre><code> ./run.sh </code></pre>
 If the code does not run, check the file's permissions in the 'Properties' section.

### How to control drone movements ###
The keys to be pressed in the input window for maneuvering the drone and performing other actions are:

`w`: move up-left

`e`: move up

`r`: move up-right

`s`: move left

`f`: move right

`x`: move down-right

`c`: move down

`v`: move down-left

Pressing the key several times increases the drone's speed, while pressing the opposite key decreases the speed.

all: master server drone input world watchdog window

clean-logs:
	rm -f build/log/watchdog/* 

clean:
	rm -f build/master build/simple_process build/watchdog build/server build/drone build/input build/world build/window

master:
	gcc master.c -o build/master

server:
	gcc server.c -o build/server

drone:
	gcc drone.c -o build/drone -lncurses -lm

input:
	gcc input.c -o build/input -lncurses

world:	
	gcc world.c -o build/world -lncurses

watchdog:
	gcc watchdog.c -o build/watchdog -lncurses

window:
	gcc window.c -o build/window -lncurses

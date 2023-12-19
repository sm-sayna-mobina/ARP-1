

all: master server drone input world watchdog window

clean-logs:
	rm -f build/log/watchdog/* 

clean:
	rm -f build/master build/server build/drone build/input build/world build/watchdog build/window

master: master.c
        master.c -o build/master

server: server.c
	 server.c -o build/server

drone: drone.c
	 drone.c -o build/drone

input: input.c
	 input.c -o build/input

world: world.c
	 world.c -o build/world

watchdog: watchdog.c
	 watchdog.c -o build/watchdog 

window: window.c
	 window.c -o build/window 

.PHONY: all clean clean-logs

export PATH := $(PATH):$(shell cat $(HOME)/.Garmin/ConnectIQ/current-sdk.cfg)/bin

build_and_test:
	# Start sim in the background
	connectiq &

	# Give the simulator some time to start up (optional, can be adjusted)
	sleep 5

	# Compile the executable
	monkeyc -d venu2s -f /home/deck/Documents/Git/pulse_ox/pulse_ox/monkey.jungle -o pulse_ox.prg -y /home/deck/developer_key/Dev_Key

	# Run in the simulator
	monkeydo pulse_ox.prg venu2s
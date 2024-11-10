export PATH := $(PATH):$(shell cat $(HOME)/.Garmin/ConnectIQ/current-sdk.cfg)/bin

DEVICE?=venu
devices = `grep 'iq:product id' manifest.xml | sed 's/.*iq:product id="\([^"]*\).*/\1/'`
# Add one line in your source like var v = "1.0";
JAVA_OPTIONS = JDK_JAVA_OPTIONS="--add-modules=java.xml.bind"

build_and_test:
	# Start sim in the background
	connectiq &

	# Give the simulator some time to start up (optional, can be adjusted)
	sleep 5

	# Compile the executable
	monkeyc -d $(DEVICE) -f monkey.jungle -o bin/pulse_ox.prg -y /home/deck/Documents/Git/developer_key

	# Run in the simulator
	monkeydo bin/pulse_ox.prg $(DEVICE)

test:
	# Start sim in the background
	connectiq &

	# Give the simulator some time to start up (optional, can be adjusted)
	sleep 5

	# Run in the simulator
	monkeydo bin/pulse_ox.prg $(DEVICE)

build:
	java \
	-Xms1g \
	-Dfile.encoding=UTF-8 \
	-Dapple.awt.UIElement=true \
	-jar "/home/deck/.Garmin/ConnectIQ/Sdks/connectiq-sdk-lin-7.3.1-2024-09-23-df7b5816a/bin/monkeybrains.jar" \
	-o bin/pulse_ox.prg \
	-f monkey.jungle \
	-y "/home/deck/Documents/Git/developer_key" \
	-d $(DEVICE)_sim \
	-w -l 0 

deploy:
	java \
	-Dfile.encoding=UTF-8 \
  	-Dapple.awt.UIElement=true \
	-jar "/home/deck/.Garmin/ConnectIQ/Sdks/connectiq-sdk-lin-7.3.1-2024-09-23-df7b5816a/bin/monkeybrains.jar" \
  	-o bin/dist/pulse_ox.iq \
	-e \
	-w \
	-y "/home/deck/Documents/Git/developer_key" \
	-r \
	-f monkey.jungle
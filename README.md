# PULSE OX

**PULSE OX** is a Garmin Connect IQ data field app designed for Garmin devices that compares your heart rate to various animals' heart rates in real-time. Based on your heart rate, the app will display which animal's heart rate your current rate most closely resembles.

## Features

- **Real-Time Heart Rate Monitoring**: Continuously tracks the user's heart rate using the watch's built-in sensor.
- **Heart Rate to Animal Comparison**: Compares your heart rate to a predefined list of animals' average heart rates and displays the most similar animal.
- **Fun and Informative**: Learn how your heart rate compares to various animals, from resting states to elevated heart rates during exercise.

## Animal Heart Rate Mapping

The app compares your heart rate to the following animals:

- **Ox**: 30 - 60 bpm
- **Horse**: 60 - 90 bpm
- **Pig**: 90 - 100 bpm
- **Cow**: 100 - 105 bpm
- **Sheep**: 105 - 110 bpm
- **Goat**: 110 - 115 bpm
- **Dog**: 115 - 120 bpm
- **Kangaroo**: 120 - 125 bpm
- **Rabbit**: 125 - 130 bpm
- **Cat**: 130 - 135 bpm
- **Giraffe**: 135 - 140 bpm
- **Cheetah**: 140 - 145 bpm
- **Ferret**: 145 - 150 bpm
- **Chihuahua**: 150 - 155 bpm
- **Squirrel**: 155 - 160 bpm
- **Guinea Pig**: 160 - 165 bpm
- **Mouse**: 165 - 170 bpm
- **Hamster**: 170 - 175 bpm
- **Sparrow**: 175 - 180 bpm
- **Canary**: 180 - 185 bpm
- **Chinchilla**: 185 - 190 bpm
- **Blue Jay**: 190 bpm+

## Installation

### Prerequisites

Ensure you have a Garmin device that supports Connect IQ and heart rate tracking.

### Installing via Garmin Connect

You can download the app directly from the [Connect IQ Store](https://apps.garmin.com/).

### Building from Source (for developers)

If you wish to modify or build the app yourself, follow these steps:

1. **Clone the repository**:
    ```bash
    git clone https://github.com/your-username/pulse_ox.git
    ```
2. **Set up Garmin Connect IQ SDK**:  
   Ensure you have the Garmin Connect IQ SDK installed on your system.  
   For more information, refer to the [Garmin Developer Documentation](https://developer.garmin.com/connect-iq/overview/).

3. **Build the project**:
    ```bash
    monkeyc -o pulse_ox.prg -m manifest.xml -f source/
    ```
4. **Install the app** on your Garmin device using `connectiq`:
    ```bash
    connectiq --install pulse_ox.prg --device YOUR_DEVICE_ID
    ```

## Usage

1. **Start a new activity** on your Garmin device.
2. **Select PULSE OX** as a data field.
3. View your heart rate in real-time and see which animal it resembles most.

## Supported Devices

Currently only tested on a Venu 2S.

- Venu 2S

## Contributing

Contributions are welcome! Please open an issue or submit a pull request with any enhancements, bug fixes, or new features.
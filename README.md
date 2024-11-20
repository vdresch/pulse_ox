# PULSE OX

**PULSE OX** is a Garmin Connect IQ data field app designed for Garmin devices that compares your heart rate to various animals' heart rates in real-time. Based on your heart rate, this data field will display which animal's heart rate your current rate most closely resembles. This is supposed to be kinda usless, it is just for fun. Also, my first app for Garmin, sort of a 'Hello World' project.

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

3. **Set up Monkey C extension on VS Code**:
    On VS Code extensions, serach for Monkey C, developed by Garmin. Install the extension.
    ```
4. **Build the app**:
    Using the VS Code Monkey C extension, use the command ```Monkey C: Build Current Project```. Selext the device you want to use.
    A .prg file will be generated.

5. **Install the app**:
    Transfer the .prg file to the Apps folder on your watch.
    ```

## Usage

1. **Start a new activity** on your Garmin device.
2. **Select PULSE OX** as a data field.
3. View your heart rate in real-time and see which animal it resembles most.

## Supported Devices
- Enduro
- Enduro 3
- Epix 2
- Epix 2 Pro
- Fenix 5
- Fenix 5 Plus
- Fenix 5s
- Fenix 5s Plus
- Fenix 5x
- Fenix 5x Plus
- Fenix 6
- Fenix 6pro
- Fenix 6s
- Fenix 6s Pro
- Fenix 6x Pro
- Fenix 7
- Fenix 7 Pro
- Fenix 7s
- Fenix 7s Pro
- Fenix 7x
- Fenix 7x Pro
- Fenix 8
- Fenix Chronos
- Fenix e
- Forerunner 165
- Forerunner 245
- Forerunner 255
- Forerunner 255s
- Forerunner 265
- Forerunner 265s
- Forerunner 645
- Forerunner 745
- Forerunner 935
- Forerunner 945
- Forerunner 955
- Forerunner 965
- Venu
- Venu 2
- Venu 2 Plus
- Venu 2s
- Venu 3
- Venu 3s
- Venu SQ
- Venu SQ 2
- Vivoactive 3
- Vivoactive 4
- Vivoactive 4s
- Vivoactive 5

## Contributing

Contributions are welcome! Please open an issue or submit a pull request with any enhancements, bug fixes, or new features.
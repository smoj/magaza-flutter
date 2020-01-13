# Flutter Magazine App Theme

A custom UI for Magazine/News apps build using flutter

## Installation

- Clone/Download the repo/zip to your system.
- In your computer terminal (in the project root folder), run `flutter pub get` to download all dependencies

### For Android:
- Launch Android Studio with the project selected
- Open the AVD Manager by clickng the AVD Manager button
[![N|Solid](https://audacitus.com/furniture/1-AndroidStudio.png)](#)
- Launch your Virtual Device from the AVD Manager list (or to use your phone, plug it in and make sure its unlocked. You phone should have had developer options enabled)
[![N|Solid](https://audacitus.com/furniture/2-AVDManager.png)](#)
- Press the play button to run the code

### For iOS:
- Open the `magaza_flutter/ios/Runner` folder using Xcode. You can also do this via android studio.
[![N|Solid](https://audacitus.com/furniture/3-OpenInXcode.png)](#)
- In Xcode, ensure the Runner is selected. Under the general tab, ensure a team is selected
[![N|Solid](https://audacitus.com/furniture/4-XCode-Team.png)](#)
- In the terminal open your simulator using `open -a simulator`
- in the terminal, run `flutter run -d all` Runs the app on all virtual/real devices available at run time


## Reviewing Screens
You can access the following screens:
- HomeScreen
- DetailScreen
- SidemenuScreen

Tapping any feed item on the HomeScreen will take you to the detail screen.
Tapping the menubar from the HomeScreen will bring up the sidebar menu.

# Appetizers App

## Overview

This iOS food ordering application, developed using **Swift** and **SwiftUI**, offers users a seamless experience to browse and order food. The app features a bottom navigation bar with three main tabs: the appetizers list, user profile, and order list.

Upon launching the app, users are first presented with the **appetizers list** tab, where they can scroll through available dishes. When a dish is selected, a modal appears with detailed information about the dish, including a button to add the item to the order.

The **profile tab** allows users to manage their personal information, which is persistently stored using **AppStorage**. This ensures that user data remains saved even when the app is closed and reopened.

The **order list tab** provides a summary of all the dishes the user has added to their order. This section is managed using **EnvironmentObject** to handle the state of the order across the app. Users can also remove dishes from the order by swiping left on an item, utilizing a convenient swipe-to-delete gesture.

Overall, the app provides a clean, user-friendly interface and efficient management of state and data storage, ensuring a smooth food ordering process.

## Features

- Bottom navigation bar with three tabs: Appetizers List, Profile, and Order List.
- A modal view that provides detailed information about each dish, with the option to add items to the order.
- User profile management using **AppStorage** for persistent data storage.
- Order list management using **EnvironmentObject**, with the ability to remove items by swiping left.
- Seamless integration of the food ordering workflow, from browsing dishes to submitting orders.

## Requirements

To run this project, you need the following:

- **macOS 11.0** or later
- **Xcode 14.0** or later
- **iOS Simulator** or a physical device running **iOS 15.0** or later

## Installation and Setup

### Step 1: Clone the Repository

First, clone the repository from GitHub:

git clone https://github.com/tinajuresko/Appetizers.git
cd Appetizers

### Step 2: Open the project in Xcode

1. Open XCode on your Mac
2. In the XCode menu, select File > Open
3. Navigate to the directory where you cloned the repository and select the .xcodeproj or .xcworkspace file to open the project.

### Step 3: Run the app

1. Once the project is open in Xcode, select the target device (iPhone Simulator or a connected physical device).
2. Press Cmd + R or click the Run button in the top left of Xcode to build and run the app.
3. The app should now launch on the selected simulator or device.

Feel free to explore the app, browse dishes, view your profile, and manage your order!




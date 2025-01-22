# CustomInfoPopup

aA Flutter package that provides a customizable popup widget to display additional information when clicked. You can customize the appearance, content, and trigger of the popup.

## Features

- Customizable popup widget that shows additional information when clicked.
- Supports custom styling for the popup’s background, text, elevation, and more.
- Can be triggered by any widget (e.g., buttons, text, icons).
- Supports custom content inside the popup (text, images, or any widget).
- Easily configurable splash radius, padding, and shadow color for a better user experience.

## Installation

To use this package, add it as a dependency in your `pubspec.yaml` file:

dependencies:
  custom_info_popup: ^0.0.1

to `/example` folder.

```dart
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:custom_info_popup/custom_info_popup.dart';

void main() {
  // Run the PopupDemoApp when the app starts.
  runApp(PopupDemoApp());
}

class PopupDemoApp extends StatelessWidget {
  const PopupDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Custom Info Popup Examples')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Example 1: Basic Popup with Text Button
            Center(
              child: CustomInfoPopup(
                infoText:
                'This is a basic popup!', // Info text that appears in the popup
                childToClickOn:
                Text('Click Me'), // The clickable child widget (text here)
                childPopped: Column(
                  children: [
                    Text(
                      'Here is the info inside the popup!', // Text displayed inside the popup
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
                onTapThePopup: () {
                  if (kDebugMode) {
                    print('Popup is opened!');
                  }
                },
                color: Colors.green[100], // Background color of the popup
                elevation: 3.0, // Elevation for the popup shadow
              ),
            ),
            SizedBox(
              height: 50, // Spacer between the popups
            ),
            // Example 2: Icon Button Trigger with Custom Background
            CustomInfoPopup(
              infoText: 'Icon Button Popup!', // Info text for the popup
              childToClickOn:
              Icon(Icons.info), // Icon button as the clickable widget
              childPopped: Column(
                children: [
                  Text(
                    'You clicked the icon button!',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
              onTapThePopup: () {
                if (kDebugMode) {
                  print('Popup is opened from icon!');
                }
              },
              color: Colors.blue[200], // Background color for the popup
              shadowColor: Colors.black45, // Shadow color for the popup
              elevation: 8.0, // Popup elevation
            ),
            SizedBox(
              height: 50, // Spacer between the popups
            ),
            // Example 3: Using Custom Widgets Inside the Popup
            SizedBox(
              height: 50, // Spacer to maintain layout
            ),
            // Example 4: Popup with Custom Text Style
            CustomInfoPopup(
              infoText: 'Styled Text Popup!', // Info text with a custom style
              childToClickOn:
              Text('Click Me'), // Text that opens the popup when clicked
              childPopped: Column(
                children: [
                  Text(
                    'Custom text styling here!',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight:
                        FontWeight.bold), // Custom text style inside popup
                  ),
                ],
              ),
              onTapThePopup: () {
                if (kDebugMode) {
                  print('Styled Popup opened!');
                }
              },
              color: Colors.purple[100], // Popup background color
              elevation: 4.0, // Elevation for the shadow effect
            ),
            SizedBox(
              height: 50, // Spacer between popups
            ),
            // Example 5: Popup with Image Content
            CustomInfoPopup(
              infoText: 'Image Popup!', // Info text with an image inside
              childToClickOn:
              Icon(Icons.image), // Icon button triggers the popup
              childPopped: Column(
                children: [
                  Image.network(
                      'https://picsum.photos/200/300'), // Image inside popup
                  Text(
                    'Here is an image inside the popup!',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ],
              ),
              onTapThePopup: () {
                if (kDebugMode) {
                  print('Image popup opened!');
                }
              },
              color: Colors.teal[100], // Background color of the popup
              elevation: 5.0, // Elevation for the shadow effect
              shadowColor: Colors.black45, // Shadow color of the popup
            ),
            SizedBox(
              height: 50, // Spacer at the bottom
            ),
          ],
        ),
      ),
    );
  }
}
```

## Additional information

Customization Options
infoText: The text displayed inside the popup (optional).
childToClickOn: The widget that triggers the popup when clicked (e.g., Text, Icon, Button).
childPopped: The widget that appears inside the popup (can be a custom widget).
color: The background color of the popup (optional).
elevation: The elevation of the popup for shadow effect (default is 0).
splashRadius: The radius of the splash effect when clicked (default is 20.0).
shadowColor: The shadow color for the popup (optional).
padding: The padding around the popup content (default is EdgeInsets.zero).
Example Use Cases
Basic Popup: Display simple information when a button is clicked.
Popup with Custom Text Style: Customize the text style inside the popup.
Popup with Image: Show images inside the popup.
Popup Triggered by Icon: Use an icon button to trigger the popup.

import 'package:flutter/material.dart';

/// A customizable popup widget that shows additional information when clicked.
class CustomInfoPopup extends StatelessWidget {
  const CustomInfoPopup({
    required this.infoText,
    this.onTapThePopup,
    required this.childToClickOn,
    required this.childPopped,
    this.color,
    this.surfaceTintColor,
    super.key,
    this.infoTextStyle,
    this.elevation = 0,
    this.splashRadius = 20.0,
    this.shadowColor,
    this.padding = EdgeInsets.zero,
  });

  final String? infoText; // The info text to display inside the popup
  final TextStyle? infoTextStyle; // Custom style for the text inside the popup
  final double elevation; // Popup elevation for shadows
  final Color? color; // Background color for the popup
  final Color? surfaceTintColor; // Tint for the surface (background color) of the popup
  final Color? shadowColor; // Shadow color
  final Widget childToClickOn; // Widget that triggers the popup when clicked
  final Widget childPopped; // Widget that shows when the popup is active
  final double splashRadius; // The radius of the splash effect when clicked
  final void Function()? onTapThePopup; // Callback when the popup is opened
  final EdgeInsetsGeometry padding; // Padding for the popup content

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<void>(
      color: color ?? Theme.of(context).popupMenuTheme.color,
      shadowColor: shadowColor ?? Colors.black45,
      splashRadius: splashRadius,
      surfaceTintColor: surfaceTintColor,
      padding: padding,
      elevation: elevation,
      onOpened: onTapThePopup,
      itemBuilder: (context) => [
        PopupMenuItem(
          enabled: false,
          child: childPopped,
        ),
      ],
      position: PopupMenuPosition.under,
      child: childToClickOn,
    );
  }
}

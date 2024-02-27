import 'package:flutter/material.dart';

class CustomButtonStyles {
  static ButtonStyle customButtonStyles(
    BuildContext context,
    Color defaultColor,
    Color hoverColor,
    Color disabledColor,
    Color foregroundColor, {
    double? borderRadius, // Optional parameter for border radius
    Color? borderColor, // Optional parameter for border color
    Color? hoverBorderColor, // Optional parameter for hover border color
    required bool isHovered, // Hover state
  }) {
    return ButtonStyle(
      foregroundColor: MaterialStateProperty.all(foregroundColor),
      backgroundColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.hovered)) {
          return hoverColor; // Change color on hover
        } else if (states.contains(MaterialState.disabled)) {
          return disabledColor.withAlpha(60); // Change color when disabled
        }
        return defaultColor; // Default color
      }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ??
              8.0), // Default radius or custom radius if provided
          side: BorderSide(
            color: isHovered
                ? hoverBorderColor ?? Colors.transparent
                : borderColor ?? Colors.transparent,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}

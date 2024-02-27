import 'package:flutter/material.dart';
import 'package:iosflutter/src/utils/constant/app_colors.dart';
import 'package:iosflutter/src/utils/theme/app_style.dart';
import 'package:iosflutter/src/utils/theme/button_styles.dart';

class Semibold16Button extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final bool enabled;
  final EdgeInsets padding;
  final double? borderRadius; // Optional parameter for border radius
  final Color? borderColor; // Optional parameter for border color
  final Color? hoverBorderColor; // Optional parameter for hover border color
  final double? width; // Optional parameter for width
  final double? height; // Optional parameter for height
  final Color textColor; // Optional parameter for Text color

  const Semibold16Button({
    required this.text,
    required this.onPressed,
    this.enabled = true,
    this.padding = const EdgeInsets.all(10.0),
    this.borderRadius, // Initialize the optional parameter for border radius
    this.borderColor, // Initialize the optional parameter for border color
    this.hoverBorderColor, // Initialize the optional parameter for hover border color
    required this.textColor, // Initialize the optional parameter for text color
    this.width, // Initialize the optional parameter for width
    this.height, // Initialize the optional parameter for height
    super.key,
  });

  @override
  State<Semibold16Button> createState() => _Semibold16ButtonState();
}

class _Semibold16ButtonState extends State<Semibold16Button> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _updateHover(true),
      onExit: (_) => _updateHover(false),
      child: Padding(
        padding: widget.padding,
        child: ElevatedButton(
          onPressed: widget.enabled ? widget.onPressed : null,
          style: _buildButtonStyle(),
          child: SizedBox(
            width: widget.width, // Set the width if provided
            height: widget.height, // Set the height if provided
            child: Center(
              child: Text(
                widget.text,
                style: AppTextStyles.getSemiBold16Style(
                  textColor: widget.textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ButtonStyle _buildButtonStyle() {
    return CustomButtonStyles.customButtonStyles(
      context,
      AppColors.secondaryColor, // Default color
      AppColors.buttonHoverColor, // Color on hover
      AppColors.secondaryColor,
      AppColors.whiteColor, // Color when disabled
      borderRadius:
          widget.borderRadius, // Pass the optional parameter for border radius
      borderColor:
          widget.borderColor, // Pass the optional parameter for border color
      hoverBorderColor: widget
          .hoverBorderColor, // Pass the optional parameter for hover border color
      isHovered:
          isHovered, // Pass the hover state to determine the border color
    );
  }

  void _updateHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}

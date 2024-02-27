import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iosflutter/src/utils/constant/app_colors.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final bool isEnabled;
  final Color activeColor;
  final Color inactiveColor;
  final Color thumbColor;

  // final Color trackColor;
  //  final Color hoverColor;
  // final Color focusColor;
  // final Color trackOutlineColor;
  // final double trackOutlineWidth;

  const CustomSwitch({
    super.key,
    required this.value,
    required this.onChanged,
    required this.isEnabled,
    this.activeColor = AppColors.secondaryColor,
    this.inactiveColor = AppColors.secondaryLightColor,
    this.thumbColor = AppColors.whiteColor,
    // this.trackColor = AppColors.separatorColor,
    // this.hoverColor = AppColors.warningColor,
    // this.focusColor = AppColors.orangeColor,
    // this.trackOutlineColor = AppColors.alertColor,
    // this.trackOutlineWidth = 5.0,
  });

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: _buildSwitch(),
    );
  }

  Widget _buildSwitch() {
    if (Theme.of(context).platform == TargetPlatform.iOS ||
        Theme.of(context).platform == TargetPlatform.macOS) {
      // Cupertino style switch for iOS and macOS
      return CupertinoSwitch(
        value: widget.value,
        onChanged: widget.isEnabled ? widget.onChanged : null,
        activeColor: widget.activeColor,
        focusColor: Colors.grey.withOpacity(0.5),
        thumbColor: widget.thumbColor,
        // trackColor: widget.trackColor,
      );
    } else {
      // Material style switch for Android, Windows, and web
      return Switch(
        value: widget.value,
        onChanged: widget.isEnabled ? widget.onChanged : null,
        activeColor: widget.activeColor,
        inactiveThumbColor: widget.inactiveColor,
        hoverColor: Colors.grey.withOpacity(0.3),
        focusColor: Colors.grey.withOpacity(0.5),
        // thumbColor: MaterialStateProperty.all<Color>(widget.thumbColor),
        // trackColor: MaterialStateProperty.all<Color>(widget.trackColor),
        // activeTrackColor: widget.trackOutlineColor,
        // inactiveTrackColor: widget.trackOutlineColor,
      );
    }
  }
}

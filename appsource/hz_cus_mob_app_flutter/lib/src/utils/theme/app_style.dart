import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static const String _poppinsFont = 'Poppins';

  // Text Styles
  /*Title2*/
  static TextStyle getBold22Style({required Color textColor}) {
    return TextStyle(
      fontSize: 22,
      fontFamily: _poppinsFont,
      fontWeight: FontWeight.w800,
      color: textColor,
    );
  }

  /*Headline*/
  static TextStyle getSemibold17Style({required Color textColor}) {
    return TextStyle(
        fontSize: 17,
        fontFamily: _poppinsFont,
        fontWeight: FontWeight.w600,
        color: textColor);
  }

  /*Callout*/
  static TextStyle getSemiBold16Style({required Color textColor}) {
    return TextStyle(
        fontSize: 16,
        fontFamily: _poppinsFont,
        fontWeight: FontWeight.w600,
        color: textColor);
  }

/*SubHeadline*/
  static TextStyle getSemibold13Style({required Color textColor}) {
    return TextStyle(
        fontSize: 13,
        fontFamily: _poppinsFont,
        fontWeight: FontWeight.w600,
        color: textColor);
  }

/*FootNote*/
  static TextStyle getMedium13Style({required Color textColor}) {
    return TextStyle(
        fontSize: 13,
        fontFamily: _poppinsFont,
        fontWeight: FontWeight.w500,
        color: textColor);
  }

  /*Body*/
  static TextStyle getNormal16Style({required Color textColor}) {
    return TextStyle(
        fontSize: 16,
        fontFamily: _poppinsFont,
        fontWeight: FontWeight.w400,
        color: textColor);
  }

/*Caption1*/
  static TextStyle getNormal13Style({required Color textColor}) {
    return TextStyle(
        fontSize: 13,
        fontFamily: _poppinsFont,
        fontWeight: FontWeight.w400,
        color: textColor);
  }

/*Caption2*/
  static TextStyle getNormal11Style({required Color textColor}) {
    return TextStyle(
        fontSize: 11,
        fontFamily: _poppinsFont,
        fontWeight: FontWeight.w400,
        color: textColor);
  }
}

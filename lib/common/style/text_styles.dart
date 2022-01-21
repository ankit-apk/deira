import 'package:deira/common/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class MyTextStyles {
  static TextStyle get smallText => TextStyle(
        fontSize: 10.sp,
        color: MyAppColor.whiteColor,
      );
  static TextStyle get mediumText => TextStyle(
        fontSize: 14.sp,
        color: MyAppColor.goldColor,
      );
  static TextStyle get mediumBold => TextStyle(
        fontSize: 14.sp,
        color: MyAppColor.whiteColor,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get largeBold => TextStyle(
        fontSize: 4.sp,
        color: MyAppColor.whiteColor,
        fontWeight: FontWeight.bold,
      );
}

import 'package:deira/common/style/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.color,
    required this.title,
  }) : super(key: key);
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Container(
        height: 37.h,
        width: 98.w,
        color: color,
        child: Center(
          child: Text(
            title,
            style: MyTextStyles.mediumBold,
          ),
        ),
      ),
    );
  }
}

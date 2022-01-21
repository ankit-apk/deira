import 'package:deira/common/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    Key? key,
    required this.imgUrl,
    required this.onTap,
  }) : super(key: key);
  final String imgUrl;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: MyAppColor.blackColor,
        height: 19.h,
        width: 19.w,
        child: Image.asset(
          imgUrl,
        ),
      ),
    );
  }
}

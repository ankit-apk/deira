import 'package:deira/common/style/colors.dart';
import 'package:deira/common/style/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceStackSilver extends StatelessWidget {
  const PriceStackSilver({
    Key? key,
    required this.textOne,
    required this.textThree,
    required this.textTwo,
  }) : super(key: key);
  final String textOne;
  final String textTwo;
  final String textThree;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(14),
            bottomLeft: Radius.circular(14),
          ),
          child: Container(
            height: 44.h,
            width: 100.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MyAppColor.greyDarkColor,
                  MyAppColor.silverColor,
                ],
              ),
            ),
            child: Center(
              child: Text(
                textOne,
                style: MyTextStyles.mediumBold,
              ),
            ),
          ),
        ),
        Container(
          height: 44.h,
          width: 98.w,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                MyAppColor.greyDarkColor,
                MyAppColor.silverColor,
              ],
            ),
          ),
          child: Center(
            child: Text(
              textTwo,
              style: MyTextStyles.mediumBold,
            ),
          ),
        ),
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
          child: Container(
            height: 44.h,
            width: 100.w,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  MyAppColor.greyDarkColor,
                  MyAppColor.silverColor,
                ],
              ),
            ),
            child: Center(
              child: Text(
                textThree,
                style: MyTextStyles.mediumBold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

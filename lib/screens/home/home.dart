import 'package:deira/common/constants/constants.dart';
import 'package:deira/common/style/colors.dart';
import 'package:deira/common/style/text_styles.dart';
import 'package:deira/common/widgets/button_widget.dart';
import 'package:deira/common/widgets/gold_bar_widget.dart';
import 'package:deira/common/widgets/gold_stack.dart';
import 'package:deira/common/widgets/silver_bar_widget.dart';
import 'package:deira/common/widgets/silver_stack.dart';
import 'package:deira/screens/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:marquee/marquee.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final ImageSlider _imageSlider = Get.put(ImageSlider());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyAppColor.blackColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //  left: 34.w,
            // right: 34.w,
            // top: 40.h,
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 34.w,
                ),
                Text(
                  "${DateTime.now().day} | 0${DateTime.now().month} | ${DateTime.now().year}",
                  style: MyTextStyles.mediumText,
                ),
                const Spacer(),
                Text(
                  "${DateTime.now().hour}:${DateTime.now().minute}",
                  style: MyTextStyles.mediumText,
                ),
                SizedBox(
                  width: 34.w,
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 87.h,
                  width: 96.w,
                  child: Image.asset(
                    Helper.logoImg,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    height: 87.h,
                    width: 160.w,
                    color: Colors.white,
                    child: Obx(
                      () => Image.network(
                        _imageSlider
                            .imageLinks[_imageSlider.currentIndex.value],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: 57.h,
                //   width: 66.w,
                //   child: Image.asset(
                //     Helper.statImg,
                //   ),
                // ),
                // SizedBox(
                //   height: 57.h,
                //   width: 66.w,
                //   child: Image.asset(
                //     Helper.mailImg,
                //   ),
                // ),
                // Column(
                //   children: [
                //     Text(
                //       "${DateTime.now().day} | 0${DateTime.now().month} | ${DateTime.now().year}",
                //       style: MyTextStyles.mediumText,
                //     ),
                //     SizedBox(
                //       height: 10.h,
                //     ),
                //     Text(
                //       "${DateTime.now().hour}:${DateTime.now().minute}",
                //       style: MyTextStyles.mediumText,
                //     ),
                //   ],
                // ),
              ],
            ),
            SizedBox(
              height: 22.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 8.w,
                ),
                ButtonWidget(
                  title: "SPOT RATE",
                  color: MyAppColor.greyColor,
                ),
                ButtonWidget(
                  title: "BUY",
                  color: MyAppColor.greenColor,
                ),
                ButtonWidget(
                  title: "SELL",
                  color: MyAppColor.redColor,
                ),
                SizedBox(
                  width: 8.w,
                ),
              ],
            ),
            SizedBox(
              height: 18.h,
            ),
            Container(
              height: 105.h,
              width: 322.w,
              decoration: BoxDecoration(
                color: MyAppColor.goldColor,
                border: Border.all(
                  color: MyAppColor.whiteColor,
                  width: 3.w,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GoldBarWidget(),
                  SilverBarWidget(),
                ],
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            SizedBox(
              width: 320.w,
              child: Column(
                children: [
                  const PriceStackGold(
                    textOne: "GOLD 1GM",
                    textTwo: "AED 215.04",
                    textThree: "AED 215.04",
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  const PriceStackGold(
                    textOne: "GOLD 9999 1KG",
                    textTwo: "AED 215,04",
                    textThree: "AED 215,04",
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  const PriceStackGold(
                    textOne: "GOLD 995 1KG",
                    textTwo: "AED 215,04",
                    textThree: "AED 215,04",
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  const PriceStackGold(
                    textOne: "GOLD TTB",
                    textTwo: "AED 215,04",
                    textThree: "AED 215,04",
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  const PriceStackSilver(
                    textOne: "SILVER 1KG",
                    textTwo: "AED 215,04",
                    textThree: "AED 215,04",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Container(
              height: 39.h,
              width: 500.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    MyAppColor.goldColor,
                    MyAppColor.goldDarkColor,
                  ],
                ),
              ),
              child: Marquee(
                text:
                    "We buy & sell TT Bar, Kilo Bar's & Gold scraps. For any queries contact us.",
                style: MyTextStyles.smallText.copyWith(
                  fontSize: 14.sp,
                ),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:deira/common/constants/constants.dart';
import 'package:deira/common/style/colors.dart';
import 'package:deira/common/widgets/bottom_icon.dart';
import 'package:deira/screens/about_us/about_us.dart';
import 'package:deira/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomBarScreen extends StatelessWidget {
  BottomBarScreen({Key? key}) : super(key: key);
  final RxList pages = [
    HomeScreen(),
    const AboutUsScreen(),
  ].obs;
  final RxInt currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyAppColor.blackColor,
      body: SizedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 729.h,
              width: 100.w,
              color: MyAppColor.blackColor,
              child: Obx(
                () => pages[currentIndex.value],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: MyAppColor.blackColor,
                border: Border.all(
                  color: MyAppColor.goldColor,
                  width: 2.w,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              width: 100.w,
              height: 73.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconWidget(
                    imgUrl: Helper.homeImg,
                    onTap: () {
                      currentIndex(0);
                    },
                  ),
                  IconWidget(
                    imgUrl: Helper.aboutImg,
                    onTap: () {
                      currentIndex(1);
                    },
                  ),
                  IconWidget(
                    imgUrl: Helper.walletImg,
                    onTap: () {
                      currentIndex(0);
                    },
                  ),
                  IconWidget(
                    imgUrl: Helper.whatsappImg,
                    onTap: () {
                      currentIndex(0);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

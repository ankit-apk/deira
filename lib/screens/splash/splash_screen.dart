import 'package:deira/common/constants/constants.dart';
import 'package:deira/common/style/colors.dart';
import 'package:deira/screens/bottombar/bottombar.dart';
import 'package:deira/screens/splash/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashController splashController = Get.put(SplashController());
  @override
  void initState() {
    splashController.increaseOpacity();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => splashController.opacityValue.value < 0.99
          ? Scaffold(
              backgroundColor: MyAppColor.blackColor,
              body: Center(
                child: SizedBox(
                  height: 104.h,
                  width: 115.w,
                  child: Obx(
                    () => Opacity(
                      opacity: splashController.opacityValue.value,
                      child: Image.asset(
                        Helper.logoImg,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : BottomBarScreen(),
    );
  }
}

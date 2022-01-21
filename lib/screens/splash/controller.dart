import 'dart:async';
import 'package:get/get.dart';

class SplashController extends GetxController {
  RxDouble opacityValue = 0.0.obs;

  void increaseOpacity() {
    Timer.periodic(
      const Duration(milliseconds: 200),
      (timer) {
        opacityValue.value < 0.99
            ? opacityValue.value = opacityValue.value + 0.1
            : () {};
      },
    );
  }
}

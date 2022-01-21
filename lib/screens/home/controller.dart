import 'dart:async';

import 'package:get/get.dart';

class ImageSlider extends GetxController {
  //variables
  RxInt currentIndex = 0.obs;
  var imageLinks = [
    "https://i.imgur.com/fafaLpk.jpg",
    "https://i.imgur.com/GeCW0ha.jpg",
  ].obs;

  //initMethod
  @override
  void onInit() {
    slideImage();
    super.onInit();
  }

//method to slide images
  void slideImage() {
    Timer.periodic(
      const Duration(seconds: 4),
      (timer) {
        if (currentIndex.value < imageLinks.length - 1) {
          currentIndex(currentIndex.value + 1);
        } else {
          currentIndex(0);
        }
      },
    );
  }
}

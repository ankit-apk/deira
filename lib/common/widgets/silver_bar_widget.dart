import 'package:deira/common/style/colors.dart';
import 'package:deira/common/style/text_styles.dart';
import 'package:deira/controllers/prices_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SilverBarWidget extends StatelessWidget {
  SilverBarWidget({
    Key? key,
  }) : super(key: key);
  final PriceController _priceController = Get.put(PriceController());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: 315.w,
      decoration: BoxDecoration(
        color: MyAppColor.goldColor,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            MyAppColor.greyDarkColor,
            MyAppColor.silverColor,
          ],
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "SILVER Oz",
            style: MyTextStyles.mediumBold,
          ),
          Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _priceController.silverPricesUsd.isNotEmpty
                      ? "USD ${_priceController.silverPricesUsd[0].price}"
                      : "USD NA",
                  style: MyTextStyles.mediumBold,
                ),
                Text(
                  // "H: 1821.50",
                  _priceController.silverPricesUsd.isNotEmpty
                      ? "H: ${_priceController.silverPricesUsd[0].highPrice}"
                      : "H: NA",
                  style: MyTextStyles.smallText,
                ),
              ],
            ),
          ),
          Obx(
            () => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  _priceController.silverPricesUsd.isNotEmpty
                      ? "USD ${_priceController.silverPricesUsd[0].price}"
                      : "USD NA",
                  style: MyTextStyles.mediumBold,
                ),
                Text(
                  // "H: 1821.50",
                  _priceController.silverPricesUsd.isNotEmpty
                      ? "L: ${_priceController.silverPricesUsd[0].lowPrice}"
                      : "L: NA",
                  style: MyTextStyles.smallText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

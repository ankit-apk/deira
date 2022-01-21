import 'package:deira/common/constants/constants.dart';
import 'package:deira/common/style/colors.dart';
import 'package:deira/common/style/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyAppColor.blackColor,
      body: Padding(
        padding: EdgeInsets.only(
          left: 34.w,
          right: 34.w,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              height: 87.h,
              width: 96.w,
              child: Image.asset(
                Helper.logoImg,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Container(
              height: 493.h,
              width: 327.w,
              decoration: BoxDecoration(
                color: MyAppColor.greyColor.withOpacity(0.6),
                border: Border.all(
                  color: MyAppColor.goldColor,
                  width: 1.2.w,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "CONTACT US",
                    style: MyTextStyles.mediumBold.copyWith(
                      color: const Color(
                        0xffA37F2F,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    """                  For Enquires or Feedback,
We will get back to you as soon as possible""",
                    style: MyTextStyles.mediumBold,
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 180.w,
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.mobileAlt,
                            size: 30.sp,
                            color: MyAppColor.goldColor,
                          ),
                          title: Text(
                            "+971 507402916",
                            style: MyTextStyles.mediumBold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 180.w,
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.whatsapp,
                            size: 30.sp,
                            color: MyAppColor.goldColor,
                          ),
                          title: Text(
                            "+971 507402916",
                            style: MyTextStyles.mediumBold,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 220.w,
                        child: ListTile(
                          leading: Icon(
                            FontAwesomeIcons.mailBulk,
                            size: 30.sp,
                            color: MyAppColor.goldColor,
                          ),
                          title: Text(
                            "deiragold@gmail.com",
                            style: MyTextStyles.mediumBold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Icon(
                    Icons.location_pin,
                    size: 30.sp,
                    color: MyAppColor.goldColor,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  SizedBox(
                    height: 60.h,
                    width: 119.w,
                    child: Text(
                      "Shop No:3, Alghanim Building, Behind Rak Bank Deira gold Souq, Dubai",
                      textAlign: TextAlign.center,
                      style: MyTextStyles.mediumBold,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Icon(
                    FontAwesomeIcons.desktop,
                    size: 30.sp,
                    color: MyAppColor.goldColor,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    "www.deiragold.com",
                    textAlign: TextAlign.center,
                    style: MyTextStyles.mediumBold,
                  ),
                  SizedBox(
                    height: 45.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }
}

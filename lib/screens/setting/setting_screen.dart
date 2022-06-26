import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:project_app/controllers/settings_controller.dart';

import '../../constants/exports.dart';
import 'components/setting_box.dart';

class SettingScreen extends GetView<SettingController> {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SettingController());
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.blackColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16.0),
          topLeft: Radius.circular(16.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 10.0),
          Center(
            child: Container(
              height: 5.0,
              width: 40.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: AppColors.greyColor,
              ),
            ),
          ),

          /// account
          SizedBox(height: screenHeight(context) * 0.02),
          SettingBox(
            onTap: () {},
            imagePath: AppImages.noPersonAvatar,
            texts: 'Account',
          ),

          /// do not disturb
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: AppColors.greyColor,
                  width: 1.0,
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    AppImages.doNotDisturb,
                    height: 40.0,
                    width: 40.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Text(
                      'Do Not Disturb',
                      style: poppinsSemiBold.copyWith(
                        fontSize: 17.0,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                  Obx(
                    () => FlutterSwitch(
                      height: 30.0,
                      width: 50.0,
                      activeColor: AppColors.blueColor,
                      padding: 2.0,
                      value: controller.toggleVal.value,
                      onToggle: (value) {
                        controller.toggleVal.value = value;
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// change background image
          SettingBox(
            onTap: () {},
            imagePath: AppImages.bgImage,
            texts: 'Change background  image',
          ),

          /// contact us
          SettingBox(
            onTap: () {},
            imagePath: AppImages.contactUs,
            texts: 'Contact Us',
          ),
          SizedBox(height: screenHeight(context) * 0.03),
        ],
      ),
    );
  }
}

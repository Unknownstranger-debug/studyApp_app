import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:project_app/controllers/settings_controller.dart';

import '../../constants/exports.dart';

class SettingScreen extends GetView<SettingController> {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SettingController());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Settings',
          style: poppinsRegular.copyWith(
            fontSize: 24.0,
            color: AppColors.whiteColor,
          ),
        ),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: AppColors.whiteColor,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          settingBox(AppImages.noPersonAvatar, 'Account'),
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
                    child: Text('Do Not Disturb',
                      style: poppinsSemiBold.copyWith(
                        fontSize: 17.0,
                        color: AppColors.whiteColor,
                      ),
                    ),

                  ),
                  Obx(() => FlutterSwitch(
                    height: 30.0,
                    width: 50.0,
                    activeColor: AppColors.blueColor,
                    padding: 2.0,
                    value: controller.toggleVal.value,
                    onToggle: (value){
                      controller.toggleVal.value = value;
                    },
                  ),),
                ],
              ),
            ),
          ),
          settingBox(AppImages.bgImage, 'Change background  image'),
          settingBox(AppImages.contactUs, 'Contact Us'),

        ],
      ),
    );
  }

  Widget settingBox(imagePath, text) => Padding(
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
            imagePath!,
            height: 40.0,
            width: 40.0,
            fit: BoxFit.fill,
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Text(text!,
              style: poppinsSemiBold.copyWith(
                fontSize: 17.0,
                color: AppColors.whiteColor,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

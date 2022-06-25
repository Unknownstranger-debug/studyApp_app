import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/exports.dart';
import '../../controllers/profile_detail_controller.dart';

class ProfileDetailScreen extends GetView<ProfileDetailController> {
  final bool isLogin;
  const ProfileDetailScreen({Key? key, required this.isLogin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ProfileDetailController());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SizedBox(
          height: screenHeight(context),
          width: screenWidth(context),
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// profile details texts
                SizedBox(height: screenHeight(context) * 0.05),
                Text(
                  'Profile Details',
                  style: poppinsSemiBold.copyWith(
                    fontSize: 20.0,
                    color: AppColors.whiteColor,
                  ),
                ),

                /// Circle Avatar
                SizedBox(height: screenHeight(context) * 0.02),
                Stack(
                  children: [
                    Image.asset(AppImages.noPersonAvatar),
                    Positioned(
                      bottom: 0.0,
                      right: 0.0,
                      child: Container(
                        height: 22.0,
                        width: 22.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.blueDarkColor,
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.edit,
                            size: 12.0,
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                /// first and last name field
                SizedBox(height: screenHeight(context) * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.024),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: NewCustomTextField(
                            controller: controller.firstNameController,
                            headingText: 'First Name',
                            hintText: '',
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: NewCustomTextField(
                            controller: controller.firstNameController,
                            headingText: 'Last Name',
                            hintText: '',
                        ),
                      ),
                    ],
                  ),
                ),

                /// Subject Combi/Diploma field
                const SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.024),
                  child: Expanded(
                    child: NewCustomTextField(
                      controller: controller.subjectController,
                      headingText: 'Subject Combi/Diploma',
                      hintText: '',
                    ),
                  ),
                ),

                /// Strength and weak Sub field
                const SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.024),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: NewCustomTextField(
                          controller: controller.firstNameController,
                          headingText: 'Strength Sub',
                          hintText: '',
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: NewCustomTextField(
                          controller: controller.firstNameController,
                          headingText: 'Weakness Sub',
                          hintText: '',
                        ),
                      ),
                    ],
                  ),
                ),

                /// Preferred Study Location field
                const SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.024),
                  child: Expanded(
                    child: NewCustomTextField(
                      controller: controller.subjectController,
                      headingText: 'Preferred Study Location',
                      hintText: '',
                    ),
                  ),
                ),

                /// Confirm Details Button
                const SizedBox(height: 24.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.024),
                  child: CustomButton(
                    onTap: (){},
                    btnText: 'Confirm Details',
                  ),
                ),

                /// logout Button
                const SizedBox(height: 24.0),
                isLogin == true ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.15),
                  child: CustomButton(
                    onTap: (){},
                    btnText: 'Log Out',
                    btnColor: AppColors.redDarkColor,
                  ),
                ) : const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants/exports.dart';

class ProfileDetailScreen extends StatelessWidget {
  final bool isLogin;
  const ProfileDetailScreen({Key? key, required this.isLogin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SizedBox(
          height: screenHeight(context),
          width: screenWidth(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// profile details texts
              SizedBox(height: screenHeight(context) * 0.1),
              Text(
                'Profile Details',
                style: poppinsSemiBold.copyWith(
                  fontSize: 20.0,
                  color: AppColors.whiteColor,
                ),
              ),

              /// Circle Avatar
              SizedBox(height: screenHeight(context) * 0.03),
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
            ],
          ),
        ),
      ),
    );
  }
}

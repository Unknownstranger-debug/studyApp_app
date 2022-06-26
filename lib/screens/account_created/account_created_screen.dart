import 'package:flutter/material.dart';

import '../../constants/exports.dart';

class AccountCreatedScreen extends StatelessWidget {
  const AccountCreatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.036),
          child: Text('Account created successfully! \nWelcome to StudyGroup',
            textAlign: TextAlign.center,
            style: poppinsRegular.copyWith(
              fontSize: 16.0,
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../constants/exports.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? hintText;
  final bool? obscureText;
  final String? obscureCharacter;

  const CustomTextField({Key? key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.obscureCharacter = '*',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenHeight(context) * 0.024),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          /*Text(headingText!,
            style: poppinsRegular.copyWith(
              fontSize: 16.0,
              color: AppColors.whiteColor,
            ),
          ),
          SizedBox(height: screenHeight(context) * 0.012),*/
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: AppColors.whiteColor,
              border: Border.all(
                width: 1.0,
                color: AppColors.primaryColor,
              ),
            ),
            child: TextFormField(
              style: poppinsRegular.copyWith(
                fontSize: 16.0,
                color: AppColors.blackColor,
              ),
              controller: controller,
              keyboardType: keyboardType,
              obscureText: obscureText!,
              obscuringCharacter: obscureCharacter!,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.only(left: 16.0, bottom: 0.0),
                hintText: hintText,
                hintStyle: poppinsRegular.copyWith(
                  fontSize: 13.0,
                  color: AppColors.greyColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: inference_failure_on_function_return_type

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../style/colors.dart";

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.onPressed, required this.text});
  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: REdgeInsets.symmetric(vertical: 15),
        fixedSize: const Size.fromWidth(double.maxFinite),
        backgroundColor: AppColors.l00623B,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(70),
        ),
      ),
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w800,
          color: AppColors.white,
        ),
      ),
    );
  }
}

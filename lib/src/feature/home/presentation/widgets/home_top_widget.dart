import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";
import "../../../../core/style/images.dart";

class HomeTopWidget extends StatelessWidget {
  const HomeTopWidget({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppImages.homeMainLogoImage,
        SizedBox(height: 16.h),
        TextField(
          keyboardType: TextInputType.none,
          onTap: onTap,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: REdgeInsets.all(8),
              child: AppImages.homeSearch,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: AppColors.white, width: 1.w),
            ),
            hintText: Words.AnimalType.tr(context),
            hintStyle: const TextStyle(color: AppColors.white),
          ),
        ),
      ],
    );
  }
}

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";

class KategoryDeropDownButton extends StatelessWidget {
  const KategoryDeropDownButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: AppColors.l00623B,
        fixedSize: Size(156.w, 42.h),
      ),
      child: Text(
        overflow: TextOverflow.ellipsis,
        Words.Animals.tr(context),
        style: TextStyle(
          fontSize: 10.sp,
          fontWeight: FontWeight.w700,
          color: AppColors.white,
        ),
      ),
    );
  }
}

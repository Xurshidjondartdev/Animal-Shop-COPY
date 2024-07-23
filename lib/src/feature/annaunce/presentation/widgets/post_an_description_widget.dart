import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";

class PostAnDicriptionsWidgets extends StatelessWidget {
  const PostAnDicriptionsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Words.Description.tr(context),
          textAlign: TextAlign.start,
          style: TextStyle(
            color: AppColors.l0xFF081131,
            fontSize: 16.sp,
            fontFamily: "Lato",
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300.w,
              height: 120.h,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: Words.TypeSomething.tr(context),
                      hintStyle: TextStyle(
                        color: AppColors.l0xFF8D98AF,
                        fontSize: 14.sp,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                      contentPadding: REdgeInsets.only(left: 24.w),
                    ),
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      color: AppColors.l0xFF8D98AF,
                      fontSize: 14.sp,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.h),
      ],
    );
  }
}

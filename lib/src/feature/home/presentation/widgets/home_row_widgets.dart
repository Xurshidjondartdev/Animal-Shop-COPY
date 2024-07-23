import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/routes/app_route_name.dart";
import "../../../../core/style/colors.dart";

class MyRowWidget extends StatelessWidget {
  const MyRowWidget({super.key, required this.onPressed});
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          Words.Animals.tr(context),
          style: TextStyle(
            color: const Color(0xFF00613A),
            fontSize: 18.h,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        const Spacer(),
        ElevatedButton(
          onPressed: () {
            context.goNamed(AppRouteName.katalogPage);
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            backgroundColor: AppColors.l00623B,
            fixedSize: Size(80.w, 30.68.h),
          ),
          child: Text(
            overflow: TextOverflow.ellipsis,
            Words.ViewAll.tr(context),
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}

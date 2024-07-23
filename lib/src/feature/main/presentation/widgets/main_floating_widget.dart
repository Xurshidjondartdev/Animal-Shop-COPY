import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";

import "../../../../core/routes/app_route_name.dart";
import "../../../../core/style/colors.dart";

class MainFloatingebWidget extends StatelessWidget {
  const MainFloatingebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.goNamed(AppRouteName.postAnnouncementPage);
      },
      icon: SizedBox(
        height: 62.h,
        width: 62.w,
        child: const DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.white,
          ),
          child: Icon(
            Icons.add,
            size: 32,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }
}

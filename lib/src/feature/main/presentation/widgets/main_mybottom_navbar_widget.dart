import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:provider/provider.dart";

import "../../../../core/style/colors.dart";
import "../../../../core/style/images.dart";
import "../../controller/main_controller.dart";

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({required this.pageController, super.key});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final ref = context.watch<MainController>();

    return BottomAppBar(
      color: AppColors.l00623B,
      height: 68.h,
      child: Row(
        children: <Widget>[
          IconButton(
            icon: ref.pageNumber == 0
                ? AppImages.homeIconGreen
                : AppImages.homeIcon,
            onPressed: () {
              ref.changePageNumber(0);
              pageController.animateToPage(
                0,
                duration: const Duration(milliseconds: 100),
                curve: Curves.bounceInOut,
              );
            },
          ),
          SizedBox(
            width: 35.w,
          ),
          IconButton(
            icon: ref.pageNumber == 1
                ? AppImages.heartIconGreen
                : AppImages.heartIcon,
            onPressed: () {
              ref.changePageNumber(1);
              pageController.animateToPage(
                1,
                duration: const Duration(milliseconds: 100),
                curve: Curves.bounceInOut,
              );
            },
          ),
          const Spacer(),
          IconButton(
            icon: ref.pageNumber == 2
                ? AppImages.chatIconGreen
                : AppImages.chatIcon,
            onPressed: () {
              ref.changePageNumber(2);
              pageController.animateToPage(
                2,
                duration: const Duration(milliseconds: 100),
                curve: Curves.bounceInOut,
              );
            },
          ),
          SizedBox(
            width: 35.w,
          ),
          IconButton(
            icon: ref.pageNumber == 3
                ? AppImages.profileIconGreen
                : AppImages.profileIcon,
            onPressed: () {
              ref.changePageNumber(3);
              pageController.animateToPage(
                3,
                duration: const Duration(milliseconds: 100),
                curve: Curves.bounceInOut,
              );
            },
          ),
        ],
      ),
    );
  }
}

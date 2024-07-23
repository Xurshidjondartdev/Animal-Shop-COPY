import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../../../core/style/colors.dart";

class UserCard extends StatelessWidget {
  const UserCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 81.h,
      child: SizedBox(
        width: double.maxFinite,
        height: 81.h,
        child: DecoratedBox(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1.1,
                color: Color(0xFF0B8500),
              ),
              borderRadius: BorderRadius.circular(15.r),
            ),
          ),
          child: ListTile(
            leading: SizedBox(
              width: 51.w,
              height: 51.h,
              child: const DecoratedBox(
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://linguistics.ucla.edu/wp-content/uploads/2020/06/placeholder.jpg",
                    ),
                    fit: BoxFit.fill,
                  ),
                  shape: OvalBorder(),
                ),
              ),
            ),
            title: Text(
              "Ism backand dan keladi",
              style: TextStyle(
                color: AppColors.l0xFF3A3A3A,
                fontSize: 18.sp,
                fontFamily: "Lato",
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text(
              "backand dan keladi",
              style: TextStyle(
                color: AppColors.l0xFF3A3A3A,
                fontSize: 12.sp,
                fontFamily: "Lato",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

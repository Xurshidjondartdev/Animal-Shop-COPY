import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 156.w,
      height: 184.h,
      child: Column(
        children: [
          SizedBox(
            height: 154.h,
            width: 156.w,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://ichef.bbci.co.uk/news/999/cpsprodpb/15951/production/_117310488_16.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 156.w,
            child: ListTile(
              title: Text(
                overflow: TextOverflow.ellipsis,
                "NAME PRODUCT",
                style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.l00623B,
                ),
              ),
              subtitle: Text(
                r"250$",
                style: TextStyle(
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.l00623B,
                ),
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: AppColors.l00623B,
                  fixedSize: Size(44.w, 20.h),
                ),
                child: Text(
                  Words.Buy.tr(context),
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

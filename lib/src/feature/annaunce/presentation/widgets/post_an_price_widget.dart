import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";
import "../../../../core/style/images.dart";

class PostAnPriceWidget extends StatelessWidget {
  const PostAnPriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Words.Price.tr(context),
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
              width: 140.w,
              height: 52.h,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: r"$0",
                      hintStyle: TextStyle(
                        color: AppColors.l0xFF8D98AF,
                        fontSize: 14.sp,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                      border: InputBorder.none,
                      contentPadding: REdgeInsets.symmetric(horizontal: 16.0),
                    ),
                    keyboardType: TextInputType.number,
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
            SizedBox(width: 16.w),
            Expanded(
              child: SizedBox(
                height: 52.h,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      underline: const SizedBox(),
                      value: "US",
                      items: <DropdownMenuItem<String>>[
                        DropdownMenuItem(
                          value: "US",
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppImages.flagEN,
                            ],
                          ),
                        ),
                        DropdownMenuItem(
                          value: "RU",
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppImages.flagRU,
                            ],
                          ),
                        ),
                        DropdownMenuItem(
                          value: "UZ",
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppImages.flagUZ,
                            ],
                          ),
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

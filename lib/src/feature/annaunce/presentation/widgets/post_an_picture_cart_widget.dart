import "package:dotted_border/dotted_border.dart";
import "package:flutter/widgets.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";

class PostAnPictureCartWidget extends StatelessWidget {
  const PostAnPictureCartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          Words.Name.tr(context),
          textAlign: TextAlign.start,
          style: TextStyle(
            color: AppColors.l0xFF081131,
            fontSize: 16.sp,
            fontFamily: "Lato",
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            DottedBorder(
              color: AppColors.lBEFFC5,
              strokeWidth: 2,
              dashPattern: const <double>[10, 10],
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              child: SizedBox(
                height: 60.h,
                width: 65.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.lBEFFC5.withOpacity(0.1),
                  ),
                ),
              ),
            ),
            const Spacer(),
            DottedBorder(
              color: AppColors.lBEFFC5,
              strokeWidth: 2,
              dashPattern: const <double>[10, 10],
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              child: SizedBox(
                height: 60.h,
                width: 65.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.lBEFFC5.withOpacity(0.1),
                  ),
                ),
              ),
            ),
            const Spacer(),
            DottedBorder(
              color: AppColors.lBEFFC5,
              strokeWidth: 2,
              dashPattern: const <double>[10, 10],
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              child: SizedBox(
                height: 60.h,
                width: 65.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.lBEFFC5.withOpacity(0.1),
                  ),
                ),
              ),
            ),
            const Spacer(),
            DottedBorder(
              color: AppColors.lBEFFC5,
              strokeWidth: 2,
              dashPattern: const <double>[10, 10],
              borderType: BorderType.RRect,
              radius: const Radius.circular(12),
              child: SizedBox(
                height: 60.h,
                width: 65.w,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.lBEFFC5.withOpacity(0.1),
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

import "package:dotted_border/dotted_border.dart";
import "package:flutter/cupertino.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";
import "../../../../core/style/images.dart";

class PostAnDotterBorderMainWidget extends StatelessWidget {
  const PostAnDotterBorderMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: AppColors.lBEFFC5,
      strokeWidth: 2,
      dashPattern: const <double>[10, 10],
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      child: SizedBox(
        height: 160.h,
        width: double.maxFinite,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: AppColors.lBEFFC5.withOpacity(0.1),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppImages.postAnDefaultImage,
              SizedBox(
                height: 10.h,
              ),
              Text(
                Words.UploadYourFileHere.tr(context),
                style: TextStyle(
                  color: AppColors.l0xFF081131,
                  // color: Color(0xFF081131),
                  fontSize: 14.sp,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w600,
                  height: 0.10,
                ),
              ),
              SizedBox(height: 20.h),
              CupertinoButton(
                onPressed: () {},
                child: Text(
                  Words.Browse.tr(context),
                  style: TextStyle(
                    color: AppColors.l0B8500,
                    fontSize: 14.sp,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w900,
                    height: 0.12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

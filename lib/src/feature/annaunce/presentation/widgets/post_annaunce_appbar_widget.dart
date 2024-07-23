import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";

class PostAnnaunceAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const PostAnnaunceAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColors.white,
      title: Text(
        Words.ToAnnounce.tr(context),
        style: TextStyle(
          color: Colors.black,
          fontSize: 22.75.sp,
          fontFamily: "Lato",
          fontWeight: FontWeight.w700,
          height: 0.06,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

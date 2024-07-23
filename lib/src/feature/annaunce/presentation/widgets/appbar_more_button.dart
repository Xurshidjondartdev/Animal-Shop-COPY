import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";

class MoreDropdown extends StatelessWidget {
  const MoreDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: AppColors.white,
      style: TextStyle(
        color: Colors.black,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w300,
        fontSize: 10.sp,
      ),
      items: [
        DropdownMenuItem(
          value: Words.Complain.tr(context),
          child: Text(Words.Complain.tr(context)),
        ),
        DropdownMenuItem(
          value: Words.ReportUser.tr(context),
          child: Text(Words.ReportUser.tr(context)),
        ),
        DropdownMenuItem(
          value: Words.CopyLink.tr(context),
          child: Text(Words.CopyLink.tr(context)),
        ),
      ],
      onChanged: (String? newValue) {},
      underline: const SizedBox(),
      icon: const Icon(
        Icons.more_vert_outlined,
        color: AppColors.l00623B,
      ),
    );
  }
}

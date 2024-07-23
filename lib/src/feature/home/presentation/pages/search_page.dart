import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "../../../../core/style/colors.dart";
import "../widgets/search_text_field_custom.dart";

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lE2FCF1,
      body: Padding(
        padding: REdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            const SearchTextFieldCastum(),
          ],
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";
import "../../../../core/widget/button_widget.dart";
import "../widgets/drop_down_button_widget.dart";
import "../widgets/post_an_call_widget.dart";
import "../widgets/post_an_description_widget.dart";
import "../widgets/post_an_dotter_border_main_widget.dart";
import "../widgets/post_an_picture_cart_widget.dart";
import "../widgets/post_an_price_widget.dart"; // PostAnPriceWidget ni import qiling
import "../widgets/post_an_title_widgets.dart";
import "../widgets/post_annaunce_appbar_widget.dart";

class PostAnnauncePage extends StatelessWidget {
  const PostAnnauncePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: const PostAnnaunceAppBarWidget(),
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 24.h),
              const ToAnnounceDropDown(),
              SizedBox(height: 24.h),
              const PostAnDotterBorderMainWidget(),
              SizedBox(height: 10.h),
              const PostAnPictureCartWidget(),
              SizedBox(height: 10.h),
              const PostAnTitleWidgets(),
              SizedBox(height: 10.h),
              const PostAnPriceWidget(),
              SizedBox(height: 10.h),
              const PhoneNumberField(),
              SizedBox(height: 10.h),
              // LocationSelector(),
              SizedBox(height: 10.h),
              const PostAnDicriptionsWidgets(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          bottom: 40.h,
          right: 24.w,
          left: 24.w,
        ),
        child: MainButton(onPressed: () {}, text: Words.Upload.tr(context)),
      ),
    );
  }
}

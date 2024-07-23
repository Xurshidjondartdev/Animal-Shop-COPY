
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";
import "../../../../core/style/images.dart";
import "../../../../core/widget/button_widget.dart";
import "../widgets/custom_app_bar.dart";
import "../widgets/user_card_videget.dart";

class DetailAnnouncePage extends StatefulWidget {
  const DetailAnnouncePage({super.key});

  @override
  DetailAnnouncePageState createState() => DetailAnnouncePageState();
}

class DetailAnnouncePageState extends State<DetailAnnouncePage> {
  final String imageUrl =
      "https://media.istockphoto.com/id/1147544807/ru/%D0%B2%D0%B5%D0%BA%D1%82%D0%BE%D1%80%D0%BD%D0%B0%D1%8F/%D0%BD%D0%B5%D1%82-thumbnail-%D0%B8%D0%B7%D0%BE%D0%B1%D1%80%D0%B0%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5-%D0%B2%D0%B5%D0%BA%D1%82%D0%BE%D1%80-%D0%B3%D1%80%D0%B0%D1%84%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9.jpg?s=612x612&w=0&k=20&c=qA0VzNlwzqnnha_m2cHIws9MJ6vRGsZmys335A0GJW4="; // Bu yerga rasm URL manzilini yozing

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: CustomAppBar(
        imageUrl: imageUrl,
        onBackPress: () {
          context.pop();
        },
        onMenuPress: () {},
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      "A very good and\nloyal friend",
                      style: TextStyle(
                        color: Color(0xFF3A3A3A),
                        fontSize: 24,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
                    ),
                  ],
                ),
                SizedBox(height: 8.h),
                Row(
                  children: <Widget>[
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: AppImages.mapPOinter,
                    ),
                    Text(
                      "India",
                      style: TextStyle(
                        color: AppColors.l0xFF64748B,
                        fontSize: 16.sp,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Text(
                  r"$9800.00",
                  style: TextStyle(
                    color: AppColors.l0xFF3A3A3A,
                    fontSize: 22.sp,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 24.h),
                Row(
                  children: <Widget>[
                    Text(
                      Words.PlacedOn.tr(context),
                      style: TextStyle(
                        color: AppColors.l0xFF64748B,
                        fontSize: 16.sp,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      Words.Status.tr(context),
                      style: TextStyle(
                        color: AppColors.l0xFF64748B,
                        fontSize: 16.sp,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 70.w),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "4 day ego",
                      style: TextStyle(
                        color: AppColors.l00613A,
                        fontSize: 16.sp,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    // const Spacer(),
                    SizedBox(width: 50.w),
                    Text(
                      Words.Available.tr(context),
                      style: TextStyle(
                        color: AppColors.l00613A,
                        fontSize: 16.sp,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                SizedBox(height: 24.h),
                Text(
                  Words.DescriptionProduct.tr(context),
                  style: TextStyle(
                    color: AppColors.l0xFF3A3A3A,
                    fontSize: 18.sp,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 12.h),
                SizedBox(
                  width: double.maxFinite,
                  height: 96.h,
                  child: const Text(
                    overflow: TextOverflow.ellipsis,
                    "backand dan keladi ",
                    style: TextStyle(
                      color: AppColors.l0xFF3A3A3A,
                      fontSize: 16,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w400,
                      height: 0.09,
                    ),
                  ),
                ),
                const UserCard(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MainButton(onPressed: (){}, text: Words.Call.tr(context)),
      ),
    );
  }
}

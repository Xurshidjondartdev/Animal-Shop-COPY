import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";
import "../../../../core/localization/words.dart";
import "../../../../core/routes/app_route_name.dart";
import "../../../../core/style/colors.dart";
import "../../controller/home_controller.dart";

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({
    super.key,
    this.id,
    this.isDeleted,
    this.createdAt,
    this.title,
    this.description,
    this.phone,
    this.imagesUrls,
  });
  final String? id;
  final bool? isDeleted;
  final DateTime? createdAt;
  final String? title;
  final String? description;
  final String? phone;
  final List<String>? imagesUrls;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, ref, child) {
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
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg",
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
                     "Nomalum",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.l00623B,
                    ),
                  ),
                  subtitle: Text(
                    r"0$",
                    style: TextStyle(
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.l00623B,
                    ),
                  ),
                  trailing: ElevatedButton(
                    onPressed: () {
                      if (context.mounted) {
                        context.goNamed(AppRouteName.detailPage);
                      }
                    },
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
      },
    );
  }
}

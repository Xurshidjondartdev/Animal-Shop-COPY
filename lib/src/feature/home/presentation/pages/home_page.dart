import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";
import "../../../../core/localization/words.dart";
import "../../../../core/routes/app_route_name.dart";
import "../../../../core/style/colors.dart";
import "../../controller/home_controller.dart";
import "../widgets/home_card_widget.dart";
import "../widgets/home_row_widgets.dart";
import "../widgets/home_top_widget.dart"; // Corrected import name

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, ref, child) {
        return Scaffold(
          // resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.lE2FCF1,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            scrolledUnderElevation: 0,
            toolbarHeight: 168.h,
            backgroundColor: AppColors.l00623B,
            centerTitle: true,
            title: HomeTopWidget(
              onTap: () => context.goNamed(AppRouteName.serchingPage),
            ),
          ),
          body: Center(
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.h),
                  MyRowWidget(
                    onPressed: () => context.goNamed(AppRouteName.katalogPage),
                  ),
                  SizedBox(height: 20.h),
                  Expanded(
                    flex: 7,
                    child: SizedBox(
                      height: 495.h,
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 2,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 15,
                          childAspectRatio: 0.69,
                        ),
                        itemBuilder: (BuildContext context, int index) {
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
                                      image:  DecorationImage(
                                        image: NetworkImage(
                                        ref.getPostModel?.imagesUrls?[index] ?? "https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg",
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
                                    ref.getPostModel?.description??  "nul",
                                      style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w700,
                                        color: AppColors.l00623B,
                                      ),
                                    ),
                                    subtitle: Text(
                                     ref.getPostModel?.id?? r"$00.0",
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
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

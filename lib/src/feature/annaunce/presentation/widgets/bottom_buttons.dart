import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/routes/app_route_name.dart";
import "../../../../core/style/colors.dart";

class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 80.h,
              width: 150.w,
              child: ElevatedButton(
                onPressed: () {
                  log("Delete button pressed");
                  showDialog<void>(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Column(
                        children: [
                          Text(
                            Words.Delete.tr(context),
                            style: TextStyle(
                              color: AppColors.l0xFF081131,
                              fontSize: 18.sp,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 24.h),
                          Text(
                            Words.AreYouSure.tr(context),
                            style: TextStyle(
                              color: AppColors.l0xFF081131,
                              fontSize: 14.sp,
                              fontFamily: "Lato",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 24.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 48.h,
                                width: 120.w,
                                child: ElevatedButton(
                                  onPressed: () {
                                    log("cancel button pressed");
                                    context.goNamed(
                                        AppRouteName.postAnnouncementPage,);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    elevation: 5,
                                    backgroundColor: Colors.green,
                                  ),
                                  child: Text(Words.Cancel.tr(context)),
                                ),
                              ),
                              SizedBox(
                                height: 48.h,
                                width: 120.w,
                                child: ElevatedButton(
                                  onPressed: () {
                                    log("delete button pressed");
                                    context.goNamed(
                                        AppRouteName.postAnnouncementPage,);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: const StadiumBorder(),
                                    elevation: 5,
                                    backgroundColor: Colors.green,
                                  ),
                                  child: Text(Words.Delete.tr(context)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: const Color(0xFFEFEFFD),
                ),
                child: const Text("Delete"),
              ),
            ),
            SizedBox(
              height: 80.h,
              width: 150.w,
              child: ElevatedButton(
                onPressed: () {
                  log("Editing button pressed");
                  context.goNamed(AppRouteName.postAnnouncementPage);
                },
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  elevation: 5,
                  backgroundColor: Colors.green,
                ),
                child: Text(Words.Editing.tr(context)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

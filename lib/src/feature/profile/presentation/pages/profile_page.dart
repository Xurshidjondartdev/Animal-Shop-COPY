import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:provider/provider.dart";
import "../../../../core/api/api.dart";
import "../../../../core/data/repostory/app_repostory_implementation.dart";
import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";
import "../../../../core/style/text_style.dart";
import "../../../../core/widget/button_widget.dart";
import "../../../auth/presentation/widgets/text_widget.dart";
import "../../../auth/presentation/widgets/textfield_widget.dart";
import "../../controller/profile_controller.dart";
import "../../profile_model.dart";

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileController>(
      builder: (context, ref, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.lE2FCF1,
          body: Column(
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 50.r,
                    child: Image.asset("assets/images/home_main_log.png"),
                  ),
                  // const Spacer(),
                  Image.asset(
                    "assets/images/hand.png",
                    height: 130.h,
                    width: 130.w,
                    alignment: Alignment.topRight,
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                "${ref.userModel?.firstName} ${ref.userModel?.lastName}",
                style: const AppTextStyle().forPas?.copyWith(
                      fontSize: 15.sp,
                      height: 2,
                      letterSpacing: -0.5,
                      color: AppColors.black,
                    ),
              ),
              Text(
                ref.userModel?.username ?? "null",
                style: const AppTextStyle().onlineRecordTitleLarge?.copyWith(
                      fontFamily: "Poppins",
                      height: 2,
                      letterSpacing: -0.5,
                      color: AppColors.c868889,
                    ),
              ),
              SizedBox(
                height: 21.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        text(
                          Words.PersonalD.tr(context),
                          16.sp,
                          FontWeight.w600,
                          Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    textField(
                      keyboardType: TextInputType.text,
                      ref.firstC,
                      "${ref.userModel!.firstName}",
                      icon: const Icon(Icons.mode_edit_rounded),
                      secondIcon: const Icon(Icons.account_circle_outlined),
                    ),
                    SizedBox(height: 5.h),
                    textField(
                      keyboardType: TextInputType.text,
                      ref.lastC,
                      "${ref.userModel!.lastName}",
                      icon: const Icon(Icons.edit),
                      secondIcon: const Icon(Icons.account_circle_outlined),
                    ),
                    SizedBox(height: 5.h),
                    textField(
                      keyboardType: TextInputType.emailAddress,
                      ref.emailC,
                      "${ref.userModel!.email}",
                      icon: const Icon(Icons.edit),
                      secondIcon: const Icon(Icons.email_outlined),
                    ),
                    SizedBox(height: 5.h),
                  ],
                ),
              ),
              const Spacer(flex: 3),
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 24.w),
              //   child: MainButton(
              //     onPressed: () {
              //       if (_formKey.currentState!.validate()) {
              //         final user = User(
              //           firstName: ref.firstC.text,
              //           lastName: ref.lastC.text,
              //           email: ref.emailC.text,
              //           image: "",
              //         );
              //
              //         context
              //             .read<AppRepositoryImpl>()
              //             .updateUser(user)
              //             .then((_) {
              //           ScaffoldMessenger.of(context).showSnackBar(
              //             SnackBar(content: Text('User updated successfully')),
              //           );
              //         }).catchError((error) {
              //           ScaffoldMessenger.of(context).showSnackBar(
              //             SnackBar(
              //                 content: Text('Failed to update user: $error')),
              //           );
              //         });
              //       }
              //     },
              //     text: Words.AllDone.tr(context),
              //   ),
              // ),
              const Spacer(),
            ],
          ),
        );
      },
    );
  }
}

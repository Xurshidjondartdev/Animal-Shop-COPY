import "dart:developer";

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";
import "../../../../core/widget/button_widget.dart";
import "../../controller/auth_controller.dart";
import "../widgets/text_widget.dart";
import "../widgets/textfield_widget.dart";

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(
      builder: (context, ref, child) {
        return Scaffold(
          // drawerEnableOpenDragGesture: false,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: AppColors.lE2FCF1,
            title: Row(
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: WidgetStateProperty.all(0),
                    backgroundColor:
                        const WidgetStatePropertyAll(AppColors.lE2FCF1),
                    shadowColor:
                        const WidgetStatePropertyAll(AppColors.lE2FCF1),
                  ),
                  onPressed: () {
                    context.pop();
                  },
                  child: Image.asset(
                    "assets/images/forget_pas_arrow_button.png",
                    height: 24,
                    width: 24,
                  ),
                ),
              ],
            ),
          ),
          // resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.lE2FCF1,
          body: Padding(
            padding: EdgeInsets.only(
              top: 30.h,
              right: 30.w,
              left: 30.w,
              bottom: 10.h,
            ),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        text(
                          Words.Hi.tr(context),
                          16,
                          FontWeight.w500,
                          Colors.brown,
                        ),
                        SizedBox(width: 5.w),
                        Image.asset(
                          "assets/images/sign_in_sticker.png",
                          height: 24.h,
                          width: 24.w,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        text(
                          "${Words.WelcomeTo.tr(context)} Animal Shop",
                          21.sp,
                          FontWeight.w900,
                          Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(height: 90.h),
                    textField(ref.nameController, Words.FirstName.tr(context)),
                    SizedBox(
                      height: 15.h,
                    ),
                    textField(
                      ref.lastNameController,
                      Words.LastName.tr(context),
                    ),
                    SizedBox(height: 15.h),
                    textField(
                      ref.emailController,
                      Words.Email.tr(context),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      height: 50.h,
                      width: 400.w,
                      child: TextField(
                        controller: ref.passwordController,
                        obscureText: ref.isObscure,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                        decoration: InputDecoration(
                          hintText: Words.Password.tr(context),
                          suffixIcon: IconButton(
                            icon: ref.isObscure
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                            onPressed: () {
                              ref.changeVisibility(!ref.isObscure);
                            },
                          ),
                          hintStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            color: Colors.brown,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.h),
                    SizedBox(
                      height: 50.h,
                      width: 400.w,
                      child: TextField(
                        controller: ref.confirmingController,
                        obscureText: ref.secondIsCheck,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                        decoration: InputDecoration(
                          hintText: Words.ConfirmPassword.tr(context),
                          suffixIcon: IconButton(
                            icon: ref.secondIsCheck
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility),
                            onPressed: () {
                              ref.checkingTwo(!ref.secondIsCheck);
                            },
                          ),
                          hintStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            color: Colors.brown,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 100.h),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: ref.isCheck
                              ? const Icon(Icons.circle_outlined)
                              : const Icon(Icons.task_alt_rounded),
                          onPressed: () {
                            ref.checking(!ref.isCheck);
                          },
                        ),
                        SizedBox(
                          width: 250.w,
                          child: Text(
                            overflow: TextOverflow.fade,
                            Words.IDoNotWishToReceive.tr(context),
                            style: TextStyle(
                              overflow: TextOverflow.clip,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w500,
                              fontSize: 7.sp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    MainButton(
                      onPressed: () async {
                        if (ref.nameController.text.isNotEmpty &&
                            ref.lastNameController.text.isNotEmpty &&
                            ref.emailController.text.isNotEmpty &&
                            ref.passwordController.text.length >= 4 &&
                            ref.confirmingController.text ==
                                ref.passwordController.text) {
                          log("bosildi");
                          await ref.authUser(
                            context: context,
                            firsName: ref.nameController.text,
                            lastName: ref.lastNameController.text,
                            password: ref.passwordController.text,
                            email: ref.emailController.text,
                            rePassword: ref.confirmingController.text,
                          );
                        }
                      },
                      text: Words.JoinNow.tr(context),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "package:provider/provider.dart";
import "../../../../core/localization/words.dart";
import "../../../../core/routes/app_route_name.dart";
import "../../../../core/style/colors.dart";
import "../../../../core/widget/button_widget.dart";
import "../../controller/auth_controller.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(
      builder: (context, ref, child) {
        return Scaffold(
          // resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.lE2FCF1,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 30.0,
                left: 30,
                top: 20,
                bottom: 10,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.h,
                  ),
                  // const Spacer(),
                  Row(
                    children: <Widget>[
                      // const SizedBox(width: 30,),
                      Text(
                        "${Words.GoodMorning.tr(context)},",
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.brown,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "assets/images/sign_in_sticker.png",
                        height: 24,
                        width: 24,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: <Widget>[
                      // const SizedBox(width: 30,),
                      Text(
                        Words.WelcomeBack.tr(context),
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  // SizedBox(height: 30.h,),
                  Center(
                    child: SizedBox(
                      height: 50,
                      width: 400,
                      child: TextField(
                        controller: ref.emailController,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Poppins",
                        ),
                        decoration: InputDecoration(
                          hintText: Words.Email.tr(context),
                          hintStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            color: Colors.brown,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: SizedBox(
                      height: 50.h,
                      width: 400.w,
                      child: TextField(
                        obscureText: ref.isObscure,
                        controller: ref.passwordController,
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
                          hintStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            color: Colors.brown,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
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
                      Text(
                        overflow: TextOverflow.fade,
                        Words.KeepMeLoggedIn.tr(context),
                        style: const TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      CupertinoButton(
                        child: Text(
                          Words.ForgotPassword.tr(context),
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Poppins",
                            color: Colors.brown,
                          ),
                        ),
                        onPressed: () {
                          ref.emailController.clear();
                          ref.passwordController.clear();
                          context.goNamed(AppRouteName.forgetPasswordPage);
                        },
                      ),
                    ],
                  ),
                  const Spacer(),
                  MainButton(
                    onPressed: () async {
                      
                      // await ref.postAuth();
                      context.goNamed(AppRouteName.allDonePage);
                    },
                    text: Words.Login.tr(context),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // const SizedBox(width: 33,),
                      Text(
                        Words.IfYouDoNotHaveAnAccount.tr(context),
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins",
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      CupertinoButton(
                        onPressed: () {
                          ref.emailController.clear();
                          ref.passwordController.clear();
                          context.goNamed(AppRouteName.signUpPage);
                        },
                        child: Text(
                          Words.CreateAccount.tr(context),
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
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

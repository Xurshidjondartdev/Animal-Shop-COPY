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
import "../widgets/text_widget.dart";

class SecondForgotPasswordPage extends StatelessWidget {
  const SecondForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(
      builder: (context, ref, child) {
        return Scaffold(
          backgroundColor: AppColors.lE2FCF1,
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
                    height: 24.h,
                    width: 24.w,
                  ),
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: REdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Center(
                    child: text(
                      Words.EmailSent.tr(context),
                      20,
                      FontWeight.w600,
                      AppColors.l00623B,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Center(
                    child: text(
                      Words.WeHaveSentAPasswordResetLinkTo.tr(context),
                      15.sp,
                      FontWeight.w400,
                      AppColors.black,
                    ),
                  ),
                  const Spacer(),
                  Image.asset("assets/images/forget_pas_sms_send.png"),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text(
                        "${Words.DidNotReceive.tr(context)}?",
                        15.sp,
                        FontWeight.w500,
                        Colors.black,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      CupertinoButton(
                        onPressed: () {},
                        child: Text(
                          Words.Resend.tr(context),
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: REdgeInsets.all(20.0),
                    child: MainButton(
                      onPressed: () {
                        context.goNamed(AppRouteName.loginPage);
                      },
                      text: Words.BackToLogin.tr(context),
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

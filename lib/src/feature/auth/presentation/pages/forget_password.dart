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
import "../widgets/textfield_widget.dart";

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(
      builder: (context, ref, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.lE2FCF1,
          appBar: AppBar(
            centerTitle: false,
            automaticallyImplyLeading: false,
            title: ElevatedButton(
              onPressed: () {
                context.pop();
              },
              style: ButtonStyle(
                elevation: WidgetStateProperty.all(0),
                backgroundColor:
                    const WidgetStatePropertyAll(AppColors.lE2FCF1),
                shadowColor: const WidgetStatePropertyAll(AppColors.lE2FCF1),
              ),
              child: Image.asset(
                "assets/images/forget_pas_arrow_button.png",
                height: 24.h,
                width: 24.w,
              ),
            ),
            backgroundColor: AppColors.lE2FCF1,
          ),
          body: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              children: <Widget>[
                Center(
                  child: text(
                    Words.ForgotPassword.tr(context),
                    20,
                    FontWeight.w600,
                    Colors.brown,
                  ),
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 40.w,
                    right: 40.w,
                  ),
                  child: Center(
                    child: text(
                      Words.DoNotWorry.tr(context),
                      12,
                      FontWeight.w400,
                      Colors.black,
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/forget_pas_security.png",
                  height: 350.h,
                  width: double.maxFinite,
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: REdgeInsets.only(
                    right: 25.w,
                    left: 25.w,
                  ),
                  child:
                      textField(ref.emailController, Words.Email.tr(context)),
                ),
                const Spacer(),
                Padding(
                  padding:
                      EdgeInsets.only(right: 20.w, left: 20.w, bottom: 10.h),
                  child: MainButton(
                    onPressed: () {
                      ref.emailController.clear();
                      context.goNamed(AppRouteName.forgetPasswordPage2);
                    },
                    text: Words.ResetPassword.tr(context),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
// ignore: depend_on_referenced_packages
import "package:pinput/pinput.dart";
import "package:provider/provider.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";
import "../../../../core/widget/button_widget.dart";
import "../../controller/auth_controller.dart";
import "../widgets/text_widget.dart";

class PinCodePage extends StatelessWidget {
  const PinCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(
      builder: (context, ref, child) {
        return Scaffold(
          backgroundColor: AppColors.lE2FCF1,
          body: Padding(
            padding: REdgeInsets.all(20.0),
            child: Column(
              children: [
                // const Spacer(),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  children: [
                    text(
                      Words.GoodMorning.tr(context),
                      16.sp,
                      FontWeight.w500,
                      AppColors.l00623B,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
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
                      Words.WelcomeBack.tr(context),
                      20.sp,
                      FontWeight.w600,
                      Colors.black,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    text(
                      Words.SendCode.tr(context),
                      12.sp,
                      FontWeight.w400,
                      Colors.black,
                    ),
                  ],
                ),
                // SizedBox(height: 40.h,),
                const Spacer(),
                Pinput(
                  defaultPinTheme: PinTheme(
                    textStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    width: 56.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: const Border.fromBorderSide(
                        BorderSide(
                          width: 1.5,
                          color: AppColors.l00623B,
                        ),
                      ),
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    textStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    width: 56.w,
                    height: 56.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.fromBorderSide(
                        BorderSide(
                          width: 1.w,
                          color: const Color(0xFF00623B),
                        ),
                      ),
                    ),
                  ),
                  pinAnimationType: PinAnimationType.fade,
                  length: 5,
                  controller: ref.pinCodeController,
                  // onCompleted: (){},
                ),
                const Spacer(),
                MainButton(
                  onPressed: () async {
                    await ref.checkPincode(
                      pincode: ref.pinCodeController.text,
                      context: context,
                    );
                  },
                  text: Words.JoinNow.tr(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

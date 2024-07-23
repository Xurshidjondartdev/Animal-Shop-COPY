import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:provider/provider.dart";
import "../../core/localization/words.dart";
import "../../core/style/colors.dart";
import "../../core/widget/button_widget.dart";
import "../auth/controller/auth_controller.dart";
import "../auth/presentation/widgets/text_widget.dart";
import "../auth/presentation/widgets/textfield_widget.dart";

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthController>(
      builder: (context, ref, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.lE2FCF1,
          body: Column(
            children: [
              Padding(
                padding: REdgeInsets.only(top: 40.0, left: 130,),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.end,
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
                      // alignment: Alignment.topRight,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              text("name and surname", 15.sp, FontWeight.w600, Colors.black),
              SizedBox(height: 5.h,),
              text("e-mail", 12.sp, FontWeight.w400, Colors.black),
              SizedBox(height: 30.h,),
              // const Spacer(),
              Row(
                children: [
                  SizedBox(width: 20.w,),
                  text(
                    Words.PersonalD.tr(context),
                    16.sp,
                    FontWeight.w600,
                    Colors.black,
                  ),
                ],
              ),
              SizedBox(height: 5.h,),
              Padding(
                padding: REdgeInsets.only(right: 20.0, left: 20, top: 10),
                child: ColoredBox(
                  color: Colors.white,
                  child: textField(
                    keyboardType: TextInputType.text,
                    ref.nameController,
                    Words.Name.tr(context),
                    icon: const Icon(Icons.mode_edit_rounded),
                    secondIcon: const Icon(Icons.account_circle_outlined),
                  ),
                ),
              ),
              Padding(
                padding: REdgeInsets.only(right: 20.0, left: 20, top: 10),
                child: ColoredBox(
                  color: Colors.white,
                  child: textField(
                    keyboardType: TextInputType.emailAddress,
                    ref.emailController,
                    Words.Email.tr(context),
                    icon: const Icon(Icons.edit),
                    secondIcon: const Icon(Icons.email_outlined),
                  ),
                ),
              ),
              Padding(
                padding: REdgeInsets.only(right: 20.0, left: 20, top: 10),
                child: ColoredBox(
                  color: Colors.white,
                  child: textField(
                    keyboardType: TextInputType.phone,
                    ref.emailController,
                    Words.PhoneNumber.tr(context),
                    icon: const Icon(Icons.edit),
                    secondIcon: const Icon(Icons.phone),
                  ),
                ),
              ),
              const Spacer(),
              Padding(
                padding: REdgeInsets.all(20.0),
                child: MainButton(onPressed: (){}, text: Words.AllDone.tr(context)),
              ),
              // const Spacer(),
            ],
          ),
        );
      },
    );
  }
}

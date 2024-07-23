import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "../../../../core/localization/words.dart";
import "../../../../core/routes/app_route_name.dart";
import "../../../../core/widget/button_widget.dart";
import "../widgets/language_drop_down_widget.dart";

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: LanguageDropdown(),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: <Widget>[
              const Spacer(),
              Image.asset(
                "assets/images/onbording_main_image.png",
                height: 203.h,
                width: 301.w,
              ),
              SizedBox(
                height: 25.h,
              ),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  Words.GoodAnimals.tr(context),
                  style: TextStyle(
                    fontSize: 34.sp,
                    fontWeight: FontWeight.w800,
                    fontFamily: "Poppins",
                    color: Colors.brown,
                  ),
                ),
              ),
              Text(
                Words.GoodMoments.tr(context),
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w800,
                  fontSize: 30.sp,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 33.h,
              ),
              Text(
                textAlign: TextAlign.center,
                Words.EnjoyTheMomentWithYourPet.tr(context),
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,
                  fontSize: 14.sp,
                  color: Colors.brown,
                ),
              ),
              const Spacer(),
              MainButton(
                onPressed: () {
                  context.goNamed(AppRouteName.loginPage);
                },
                text: Words.GetStarted.tr(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

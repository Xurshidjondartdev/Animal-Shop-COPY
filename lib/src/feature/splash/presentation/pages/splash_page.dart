import "dart:async";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "../../../../../setup.dart";
import "../../../../core/routes/app_route_name.dart";
import "../../../../core/style/colors.dart";

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 2),
      () {
        token != null
            ? context.go(AppRouteName.onBoarding)
            : context.goNamed(AppRouteName.mainPage);
      },
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/app_logo.png"),
            const SizedBox(height: 50),
            const Text(
              "version: 1.0.0",
              style: TextStyle(color: AppColors.black),
            ),
          ],
        ),
      ),
    );
  }
}

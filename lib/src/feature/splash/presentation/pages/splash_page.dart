import "dart:async";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "../../../../core/routes/app_route_name.dart";

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      context.go(AppRouteName.onBoarding);
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/images/app_logo.png"), // Replace with your splash image
      ),
    );
  }
}

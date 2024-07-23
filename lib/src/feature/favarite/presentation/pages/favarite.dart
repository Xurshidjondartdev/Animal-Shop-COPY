import "package:flutter/material.dart";

import "../../../../core/style/colors.dart";

class Favarite extends StatelessWidget {
  const Favarite({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lE2FCF1,
      body: Center(
        child: Text("Favarite"),
      ),
    );
  }
}

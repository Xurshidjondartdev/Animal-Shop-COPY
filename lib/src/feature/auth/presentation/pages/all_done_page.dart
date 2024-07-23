import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/routes/app_route_name.dart";
import "../../../../core/style/colors.dart";
import "../../../../core/widget/button_widget.dart";
import "../widgets/text_widget.dart";

class AllDonePage extends StatelessWidget {
  const AllDonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lE2FCF1,
      body: Padding(
        padding: REdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            const Spacer(),
            Row(
              children: <Widget>[
                text(
                  Words.AllDone.tr(context),
                  20,
                  FontWeight.w700,
                  Colors.brown,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            text(
              Words.ThanksForGivingUs.tr(context),
              10,
              FontWeight.w400,
              Colors.black,
            ),
            const SizedBox(
              height: 50,
            ),
            Image.asset("assets/images/all_done.png"),
            const Spacer(),
            MainButton(
              onPressed: () {
                context.pushNamed(AppRouteName.mainPage);
              },
              text: Words.LetsGo.tr(context),
            ),
          ],
        ),
      ),
    );
  }
}

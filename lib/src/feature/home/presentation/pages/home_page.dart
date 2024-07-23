import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "../../../../core/routes/app_route_name.dart";
import "../../../../core/style/colors.dart";
import "../widgets/home_card_widget.dart";
import "../widgets/home_row_widgets.dart";
import "../widgets/homr_top_widget.dart"; // Corrected import name

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.lE2FCF1,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        scrolledUnderElevation: 0,
        toolbarHeight: 168.h,
        backgroundColor: AppColors.l00623B,
        centerTitle: true,
        title: HomeTopWidget(
          onTap: () => context.goNamed(AppRouteName.serchingPage),
        ),
      ),
      body: Center(
        child: Padding(
          padding: REdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.h),
              MyRowWidget(
                onPressed: () => context.goNamed(AppRouteName.katalogPage),
              ),
              SizedBox(height: 20.h),
              Expanded(
                flex: 7,
                child: SizedBox(
                  height: 495.h,
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: 8,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.69,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return const HomeCardWidget();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "../../../../core/style/colors.dart";
import "../../../favarite/presentation/pages/favourite_page.dart";
import "../../../home/presentation/pages/home_page.dart";
import "../../../profile/presentation/pages/profile_page.dart";
import "../../controller/main_controller.dart";
import "../widgets/main_floating_widget.dart";
import "../widgets/main_mybottom_navbar_widget.dart";

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Consumer<MainController>(
      builder: (context, ref, child) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppColors.lBEFFC5,
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: const <Widget>[
              HomePage(),
              FavouritePage(),
              HomePage(),
              ProfilePage(),
            ],
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: const MainFloatingebWidget(),
          bottomNavigationBar: MyBottomNavBar(
            pageController: _pageController,
          ),
        );
      },
    );
  }
}

import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:go_router/go_router.dart";
import "../../../../core/localization/words.dart";
import "../../../../core/routes/app_route_name.dart";
import "../../../../core/style/colors.dart";
import "../widgets/home_card_widget.dart";
import "../widgets/home_category_dropdown_widget.dart";

class KatalogPage extends StatelessWidget {
  const KatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: true,
        title: Column(
          children: <Widget>[
            Text.rich(
              TextSpan(
                children: <InlineSpan>[
                  TextSpan(
                    text: Words.WelcomeTo.tr(context),
                    style: const TextStyle(
                      color: Color(0xFF00B314),
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  const TextSpan(
                    text: " \n",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: Words.NaturalTrading.tr(context),
                    style: const TextStyle(
                      color: Color(0xFF00B314),
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actions: const [
          CategoryDropdown(),
          SizedBox(width: 5),
        ],
        backgroundColor: AppColors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: REdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            TextField(
              onTap: () {
                context.goNamed(AppRouteName.serchingPage);
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.green,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),
                hintText: Words.AnimalType.tr(context),
                hintStyle: const TextStyle(color: Colors.green),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Text(
                  "New products",
                  style: TextStyle(
                    color: AppColors.l00613A,
                    fontSize: 12.h,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                const Spacer(),
                Opacity(
                  opacity: 0.50,
                  child: Text(
                    DateTime.now().toIso8601String().substring(0, 10),
                    style: TextStyle(
                      color: AppColors.l00613A,
                      fontSize: 6.h,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Expanded(
              flex: 7,
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.69,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return const HomeCardWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

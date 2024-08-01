import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "../../../../core/style/colors.dart";
import "../../../../core/style/text_style.dart";
import "../../../home/presentation/widgets/w_favourite_card.dart";

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.white,
        leadingWidth: 75.w,
        centerTitle: true,
        title: Text(
          "Favourite",
          style: const AppTextStyle().forPas?.copyWith(
            color: AppColors.black,
            fontFamily: "Poppins",
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const WFavouriteCard(
            chipText: "Bola qarash",
            chipPrice: "100 000 - 200 000 sum",
            title:
            "Idish tovoq yuvish uchun bitta qiz kerak onamga yordam uchun",
            location: "Toshkent, Uzbekiston",
            dateTime: "2024, May 19, 14:50",
          );
        },
      ),
    );
  }
}

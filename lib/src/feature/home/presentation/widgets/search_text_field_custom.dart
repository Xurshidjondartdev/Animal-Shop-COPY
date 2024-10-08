import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:provider/provider.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";
import "../../../../core/style/images.dart";
import "../../controller/home_controller.dart";

class SearchTextFieldCastum extends StatefulWidget {
  const SearchTextFieldCastum({super.key});

  @override
  SearchTextFieldCastumState createState() => SearchTextFieldCastumState();
}

class SearchTextFieldCastumState extends State<SearchTextFieldCastum> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, ref, child) {
        return TextField(
          controller: ref.searchController,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: REdgeInsets.all(8),
              child: AppImages.SearchWhite,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: AppColors.l00613A,
                width: 2.w,
              ),
            ),
            hintText: Words.AnimalType.tr(context),
            hintStyle: const TextStyle(
              color: AppColors.l00613A,
            ),
          ),
          style: const TextStyle(
            color: AppColors.l00613A, // kiritilgan matn rangini o'zgartiradi
          ),
        );
      },
    );
  }
}

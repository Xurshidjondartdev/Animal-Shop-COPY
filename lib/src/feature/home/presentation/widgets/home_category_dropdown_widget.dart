import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "../../../../core/style/colors.dart";
import "../../../../core/style/images.dart";

class CategoryDropdown extends StatelessWidget {
  const CategoryDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: AppColors.white,
      style: TextStyle(
        color: Colors.black,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w300,
        fontSize: 10.sp,
      ),
      // value:
      items: const [
        DropdownMenuItem(
          value: "Cats",
          child: Text("Cats"),
        ),
        DropdownMenuItem(
          value: "Dogs",
          child: Text("Dogs"),
        ),
        DropdownMenuItem(
          value: "Ducks",
          child: Text("Ducks"),
        ),
      ],
      onChanged: (String? newValue) {},
      underline: const SizedBox(), // Remove underline
      icon: AppImages.katalogFilter,
    );
  }
}

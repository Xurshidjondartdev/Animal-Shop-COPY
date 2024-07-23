import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:provider/provider.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";
import "../../controller/to_announce_ctr.dart";

class ToAnnounceDropDown extends StatelessWidget {
  const ToAnnounceDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ToAnnounceController>(
      builder: (context, ref, child) {
        return DropdownButton<String>(
          dropdownColor: AppColors.white,
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w300,
            fontSize: 10.sp,
          ),
          value: ref.type,
          items: [
            DropdownMenuItem(
              value: "Animals",
              child: Text(Words.Animals.tr(context)),
            ),
            DropdownMenuItem(
              value: "Dogs",
              child: Text(Words.Dogs.tr(context)),
            ),
            DropdownMenuItem(
              value: "Cats",
              child: Text(Words.Cats.tr(context)),
            ),
            DropdownMenuItem(
              value: "Ducks",
              child: Text(Words.Ducks.tr(context)),
            ),
          ],
          onChanged: (String? newValue) {
            if (newValue != null) {
              ref.chnageAnnounceType(newValue);
            }
          },
          underline: const SizedBox(), // Remove underline
          icon: const Icon(
            Icons.arrow_drop_down,
            color: AppColors.l00623B,
          ),
        );
      },
    );
  }
}

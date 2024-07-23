import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:provider/provider.dart";

import "../../../../core/style/colors.dart";
import "../../../../core/widget/app_material_context.dart";
import "../../../settings/model/language_type.dart";
import "../../controller/auth_controller.dart";

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final languageProvider = Provider.of<AuthController>(context);
    // languageProvider.chnageSelectedLanguage();
    return DropdownButton<String>(
      dropdownColor: AppColors.white,
      style: TextStyle(
        color: Colors.black,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w300,
        fontSize: 10.sp,
      ),
      value: localController.selectedLanguage,
      items: const [
        DropdownMenuItem(
          value: "en",
          child: Text("English"),
        ),
        DropdownMenuItem(
          value: "ru",
          child: Text("Russian"),
        ),
        DropdownMenuItem(
          value: "uz",
          child: Text("Uzbek"),
        ),
      ],
      onChanged: (String? newValue) {
        if (newValue != null) {
          languageProvider.changeLanguage(newValue);
        }
        if (newValue == "uz") {
          localController.changeLocal(LanguageType.uz);
          languageProvider.selectedLanguage = "Uzbek";
        } else if (newValue == "ru") {
          localController.changeLocal(LanguageType.ru);
          languageProvider.selectedLanguage = "Russian";
        } else {
          localController.changeLocal(LanguageType.en);
          languageProvider.selectedLanguage = "English";
        }
      },
      underline: const SizedBox(), // Remove underline
      icon: const Icon(
        Icons.language,
        color: AppColors.l00623B,
      ),
    );
  }
}

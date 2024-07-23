import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "package:intl_phone_field/intl_phone_field.dart";

import "../../../../core/localization/words.dart";
import "../../../../core/style/colors.dart";

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textAlign: TextAlign.start,
            Words.PhoneNumber.tr(context),
            style: TextStyle(
              color: AppColors.l0xFF081131,
              fontSize: 16.sp,
              fontFamily: "Lato",
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 8.h),
          IntlPhoneField(

            keyboardType: TextInputType.number,
            flagsButtonPadding: REdgeInsets.only(left: 16),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            dropdownIconPosition: IconPosition.trailing,
            decoration: InputDecoration(
              labelText: Words.PhoneNumber.tr(context),
              labelStyle: const TextStyle(
                color: AppColors.black, // Set label text color to black
              ),
              border: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                borderSide: BorderSide(
                  color: AppColors.l0xFF0B8500,
                  width: 2.w,
                ),
              ),
              filled: true,
              fillColor: AppColors.l0xFFF8FAFC,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 24.h, horizontal: 12.w),
            ),
            initialCountryCode: "UZ",
            onChanged: (phone) {},
            style: const TextStyle(
              color: Colors.black, // Set input text color to black
            ),
            dropdownTextStyle: const TextStyle(
              color: AppColors.black, // Set country code text color to black
            ),
          ),
        ],
      ),
    );
  }
}

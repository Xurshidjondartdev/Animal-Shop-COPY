import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

SizedBox textField(
  TextEditingController controller,
  String hint, {
  Icon? icon,
  String? underText,
  Widget? secondIcon,
  TextInputType? keyboardType,
}) {
  return SizedBox(
    width: double.infinity,
    height: 50.h,
    child: TextField(
      enabled: true,
      cursorColor: Colors.brown,
      keyboardType: keyboardType,
      style: TextStyle(
        color: Colors.black,
        fontSize: 13.sp,
        fontWeight: FontWeight.w500,
        fontFamily: "Poppins",
      ),
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: secondIcon,
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins",
          color: Colors.black,
        ),
        helperText: underText,
        suffixIcon: icon,
        helperStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: "Poppins",
          color: Colors.brown,
        ),
      ),
    ),
  );
}
// class CustomTextFieldComponent extends StatelessWidget{
//   const CustomTextFieldComponent({super.key, required this.controller, required this.suffixIcon});
//
//
//   final TextEditingController controller;
//   final Icon suffixIcon;
//   final Icon suffixIcon;
//   final IconButton onEditPressed;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       cursorColor: Colors.brown,
//       keyboardType: keyboardType,
//       style: TextStyle(
//         color: Colors.black,
//         fontSize: 13.sp,
//         fontWeight: FontWeight.w500,
//         fontFamily: "Poppins",
//       ),
//       controller: controller,
//       decoration: InputDecoration(
//         prefixIcon: onEditPressed,
//         hintText: hint,
//         hintStyle: TextStyle(
//           fontSize: 14.sp,
//           fontWeight: FontWeight.w500,
//           fontFamily: "Poppins",
//           color: Colors.black,
//         ),
//         helperText: underText,
//         suffixIcon: suffixIcon,
//         helperStyle: const TextStyle(
//           fontSize: 14,
//           fontWeight: FontWeight.w500,
//           fontFamily: "Poppins",
//           color: Colors.brown,
//         ),
//       ),
//     ),
//   }
// }

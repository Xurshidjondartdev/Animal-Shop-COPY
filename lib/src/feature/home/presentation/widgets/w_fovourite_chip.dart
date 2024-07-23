import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

class WFavouriteChip extends StatelessWidget {
  const WFavouriteChip({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: REdgeInsets.only(right: 4),
      child: SizedBox(
        height: 20.h,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  text,
                  style: TextStyle(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

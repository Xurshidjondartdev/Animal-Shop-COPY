import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";

import "w_fovourite_chip.dart";

class WFavouriteCard extends StatelessWidget {
  const WFavouriteCard({
    required this.title,
    required this.location,
    required this.dateTime,
    required this.chipPrice,
    required this.chipText,
    super.key,
  });
  final String chipText;
  final String chipPrice;
  final String title;
  final String location;
  final String dateTime;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        // height: 244.h,
        width: double.maxFinite,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: const Color(0xFFE6E6E6),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 145.h,
                width: double.maxFinite,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    "https://theacademic.com/wp-content/uploads/2023/05/white-cute-robot-shopping-in-a-store-scaled.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: REdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 8.h),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8.h),
                    WFavouriteChip(text: chipPrice),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Text(
                          location,
                          style: const TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(0, 0, 0, 0.70),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          dateTime,
                          style: const TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(0, 0, 0, 0.70),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

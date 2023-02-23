import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String Constant File/image_string_file.dart';
import '../String Constant File/text_string_file.dart';

class SkillsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      // color: Colors.red.shade100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            location_image: skill_1,
            text: Figma,
            count: "10 / 10",
          ),
          Category(
            location_image: skill_3,
            text: after_effects,
            count: "7 / 10",
          ),
          Category(
            location_image: skill_2,
            text: illustrator,
            count: "7 / 10",
          ),
          Category(
            location_image: skill_1,
            text: Figma,
            count: "10 / 10",
          ),
          Category(
            location_image: skill_3,
            text: after_effects,
            count: "7 / 10",
          ),
          Category(
            location_image: skill_2,
            text: illustrator,
            count: "7 / 10",
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String? location_image;
  final String? text;
  final String? count;

  Category({
    this.text,
    this.location_image,
    this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 90.h,
        width: 120.w,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              location_image!,
              height: 35.h,
              width: 40.h,
            ),
            SizedBox(height: 10.h),
            Text(
              text!,
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5.h),
            Text(
              count!,
              style: TextStyle(fontSize: 14.sp, color: Colors.grey.shade700),
            )
          ],
        ),
      ),
    );
  }
}

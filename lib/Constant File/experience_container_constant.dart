import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../String Constant File/image_string_file.dart';
import '../String Constant File/text_string_file.dart';

class ExperienceContainer extends StatelessWidget {
  const ExperienceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 720.h,
      // color: Colors.yellow.shade100,
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Category(
              location_image: google_1,
              text: ux_ui,
              sub_text: google_inc,
              date: date1),
          SizedBox(height: 10.h),
          Category(
            location_image: snap_1,
            text: seniorUx_Ui,
            sub_text: snap_inc,
            date: date2,
          ),
          SizedBox(height: 10.h),
          Category(
            location_image: mete_1,
            text: simonprofile,
            sub_text: meta,
            date: date3,
          ),
          SizedBox(height: 10.h),
          Category(
              location_image: pocket,
              text: junior_ux_ui,
              sub_text: pocket_lnc,
              date: date4),
          SizedBox(height: 10.h),
          Category(
              location_image: google_1,
              text: ux_ui,
              sub_text: google_inc,
              date: date1),
          SizedBox(height: 10.h),
          Category(
            location_image: snap_1,
            text: seniorUx_Ui,
            sub_text: snap_inc,
            date: date2,
          ),
          SizedBox(height: 80.h),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String? location_image;
  final String? text;
  final String? sub_text;
  final String? date;

  Category({
    this.text,
    this.location_image,
    this.sub_text,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        height: 100.h,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(25.r)),
        child: Row(
          children: [
            Container(
              height: 55.h,
              width: 60.w,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12.r)),
              child: Container(
                margin: const EdgeInsets.all(10.0),
                height: 20.h,
                width: 20.w,
                decoration: BoxDecoration(
                  color: Colors.blue.shade200,
                  borderRadius: BorderRadius.circular(12.r),
                  image: DecorationImage(
                    image: AssetImage(
                      location_image!,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text!,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    sub_text!,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text(
              date!,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

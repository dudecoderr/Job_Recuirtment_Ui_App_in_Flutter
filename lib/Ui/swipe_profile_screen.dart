import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../String Constant File/image_string_file.dart';
import '../String Constant File/text_string_file.dart';
import 'dashboard_screen.dart';

class SwipeProfileScreen extends StatefulWidget {
  const SwipeProfileScreen({Key? key}) : super(key: key);

  @override
  State<SwipeProfileScreen> createState() => _SwipeProfileScreenState();
}

class _SwipeProfileScreenState extends State<SwipeProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 45,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 25.sp,
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(home_Profile_img_5), fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  colors: [
                    // Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.2),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 42,
            left: 8,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 45.h,
                width: 48.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: Colors.white38),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 25.sp,
                ),
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 400),
                          child: const DashBoardScreen()));
                },
                child: Container(
                  // color: Colors.yellow,
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Hanna_Dias,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 15.h),
                        Text(
                          designer,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,
                                color: Colors.grey),
                            SizedBox(width: 5.w),
                            Text(
                              location,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Align(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.keyboard_double_arrow_down,
                              color: Colors.white,
                              size: 35.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

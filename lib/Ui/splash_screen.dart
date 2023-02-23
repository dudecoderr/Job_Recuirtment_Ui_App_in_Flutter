import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:phlox_animations/phlox_animations.dart';
import 'package:recruitment_ui_in_flutter_app/Ui/select_job_type.dart';

import '../String Constant File/image_string_file.dart';
import '../String Constant File/text_string_file.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF121314),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 555,
                  // color: Colors.yellow,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 220,
                        right: -5,
                        child: PhloxAnimations(
                          duration: Duration(seconds: 3),
                          fromX: 100,
                          fromY: -40,
                          child: Container(
                            height: 265.h,
                            width: 150.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                image: const DecorationImage(
                                    image: AssetImage(Profile_img_4),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -15,
                        right: 20,
                        child: PhloxAnimations(
                          duration: Duration(seconds: 3),
                          fromX: 100,
                          child: Container(
                            height: 220.h,
                            width: 160.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                image: const DecorationImage(
                                    image: AssetImage(Profile_img_3),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 110,
                        child: PhloxAnimations(
                          duration: Duration(seconds: 3),
                          fromX: -50,
                          fromY: 100,
                          child: Container(
                            height: 340.h,
                            width: 220.h,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                image: const DecorationImage(
                                    image: AssetImage(Profile_img_1),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                PhloxAnimations(
                  duration: Duration(seconds: 3),
                  fromOpacity: 0.1,
                  fromX: -50,
                  fromY: 100,
                  child: Text(
                    tital,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(height: 10.h),
                PhloxAnimations(
                  duration: Duration(seconds: 3),
                  fromX: -50,
                  fromY: 100,
                  child: Text(
                    tital_Sub,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 65.h,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: const Duration(milliseconds: 400),
                            child: SelectJobType()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0XFFFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.r),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        get_Started,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 10.w),
                      Icon(Icons.arrow_forward, color: Colors.black),
                    ],
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

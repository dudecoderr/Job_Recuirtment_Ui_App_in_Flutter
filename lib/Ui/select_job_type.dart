import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:page_transition/page_transition.dart';

import '../Constant File/select_job_context_constantfile.dart';
import '../String Constant File/text_string_file.dart';
import 'BottomNavigationBar/bottom_navigation_bar.dart';

class SelectJobType extends StatefulWidget {
  const SelectJobType({Key? key}) : super(key: key);

  @override
  State<SelectJobType> createState() => _SelectJobTypeState();
}

class _SelectJobTypeState extends State<SelectJobType> {
  ///================= container select========================
  RxString find_a_job = "find_a_job".obs;
  RxInt _selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF121314),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 46, horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 25.sp,
                        )),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: const Duration(milliseconds: 400),
                                child: BottomNavigationScreen()));
                      },
                      child: Text(
                        skip,
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80.h),
                Text(
                  choose_the_job_type,
                  style: TextStyle(
                      color: Colors.white,
                      wordSpacing: 3,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10.h),
                Text(
                  choose_the_job_Sub_tex,
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(height: 40.h),

                ///__________________ select container ______________
                SizedBox(
                  child: Row(
                    children: joblist
                        .asMap()
                        .entries
                        .map((e) => Obx(() {
                              return Container(
                                height: 155.h,
                                width: 155.w,
                                padding: EdgeInsets.all(1),
                                margin: EdgeInsets.only(
                                    left: (e.key == 0) ? 0 : 12),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: (_selectedIndex.value == e.key)
                                          ? Color(0xFF01469D)
                                          : Colors.white10,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(25.r),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    _selectedIndex.value = e.key;
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(26.r),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Spacer(),
                                        Icon(
                                          e.value.icons,
                                          size: 25.sp,
                                          color: Colors.white,
                                        ),
                                        SizedBox(height: 20.h),
                                        Text(
                                          e.value.Tital!,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800),
                                        ),
                                        SizedBox(height: 10.h),
                                        Text(
                                          e.value.subText!,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            color: Colors.white70,
                                          ),
                                        ),
                                        const Spacer(),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }))
                        .toList(),
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
                            child: BottomNavigationScreen()));
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
                        Continue,
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

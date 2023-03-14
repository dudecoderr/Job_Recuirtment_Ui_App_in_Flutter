import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../Constant File/slide_value_constant_file.dart';
import '../String Constant File/image_string_file.dart';
import '../String Constant File/text_string_file.dart';
import 'Tab_screen/tab_select_screen.dart';
import 'swipe_profile_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///_________ app bar start ____________
              Container(
                height: 60.h,
                width: MediaQuery.of(context).size.width,
                // color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 55.h,
                        width: 58.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            image: DecorationImage(
                                image: AssetImage(profile_2),
                                fit: BoxFit.cover)),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Morning,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Icon(Icons.arrow_forward, color: Colors.black),
                              SizedBox(width: 5.w),
                              Text(
                                Mira,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.notification_add,
                        color: Colors.black,
                        size: 25.sp,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25.h),

              ///___________ black Container ________
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.rightToLeft,
                          duration: const Duration(milliseconds: 400),
                          child: const SwipeProfileScreen()));
                },
                child: Container(
                  height: 85.h,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            you_have_17_new_applications,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            check_them_right_now,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 24.sp,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                child: Row(
                  children: [
                    Text(
                      Tasks,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800),
                    ),
                    Spacer(),
                    Icon(Icons.add, color: Colors.black, size: 25.sp),
                  ],
                ),
              ),

              ///_________________ select tab _____________________
              SelectTabPage(),

              ///______________ slider list_________
              SizedBox(
                height: 500,
                child: ListView.builder(
                  itemCount: myProducts.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Dismissible(
                      key: UniqueKey(),
                      onDismissed: (_) {
                        setState(() {
                          myProducts.removeAt(index);
                        });
                      },
                      background: slideRightBackground(),
                      secondaryBackground: slideLeftBackground(),
                      child: Container(
                        height: 100.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.r)),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.r),
                          ),
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 145.w,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.schedule,
                                            size: 18.sp,
                                          ),
                                          Spacer(),
                                          Text(
                                            "today / 2pm - 4pm",
                                            style: TextStyle(
                                                color: Colors.grey.shade700),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 10.h),
                                    Container(
                                      width: 250.w,
                                      child: Text(
                                        "meeting new employees in the office",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17.sp),
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                InkWell(
                                    onTapCancel: () {
                                      setState(() {
                                        myProducts.removeAt(index);
                                      });
                                    },
                                    child: Icon(Icons.done)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget slideLeftBackground() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.r),
      color: Colors.green,
    ),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.done,
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Done",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget slideRightBackground() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25.r),
      color: Colors.red,
    ),
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const <Widget>[
            Icon(
              Icons.delete,
              color: Colors.white,
            ),
            Text(
              " Delete",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectTabPage extends StatelessWidget {
  const SelectTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      animationDuration: Duration(seconds: 1),
      child: Container(
        decoration: BoxDecoration(
          // color: Colors.yellow,
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Column(
          children: [
            Container(
              height: 50.h,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(50.r)),
              child: TabBar(
                indicator: BoxDecoration(
                    color: Color(0Xff01469D),
                    borderRadius: BorderRadius.circular(50.r)),
                labelColor: Colors.white,
                labelStyle:
                    TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w700),
                unselectedLabelColor: Colors.black87,
                tabs: const [
                  Tab(
                    text: "To Do",
                  ),
                  Tab(
                    text: 'Completed',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

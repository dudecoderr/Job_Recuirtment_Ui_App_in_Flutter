import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_page.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int current_index = 0;
  final List<Widget> pages = [
    const HomePage(),

    Center(),
    Center(),
    Center(),
    Center(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: current_index,
        children: pages,
      ),
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: Colors.grey.shade300,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        fontSize: 0,
        borderRadius: 25.r,
        selectedBackgroundColor: Color(0XFF01469D),
        unselectedItemColor: Colors.grey.shade500,
        selectedItemColor: Colors.white,
        iconSize: 25.sp,
        itemBorderRadius: 12.r,
        onTap: (int val) {
          setState(() {
            current_index = val;
          });
        },
        currentIndex: current_index,
        items: [
          FloatingNavbarItem(
            icon: Icons.dashboard_customize,
            title: '',
          ),
          FloatingNavbarItem(
            icon: Icons.chat_bubble_outline,
            title: '',
          ),
          FloatingNavbarItem(
            icon: Icons.calendar_today,
            title: '',
          ),
          FloatingNavbarItem(
            icon: Icons.group_add,
            title: '',
          ),
          FloatingNavbarItem(
            icon: Icons.settings,
            title: '',
          ),
        ],
      ),
    );
  }
}

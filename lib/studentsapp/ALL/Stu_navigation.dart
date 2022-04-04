import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class StudentNavigation extends StatefulWidget {
  StudentNavigation({Key? key, required this.tabController}) : super(key: key);
  TabController tabController;
  @override
  State<StudentNavigation> createState() => _StudentNavigationState();
}

class _StudentNavigationState extends State<StudentNavigation> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      animationDuration: const Duration(milliseconds: 400),
      height: 70,
      backgroundColor: Colors.transparent,
      items: const [
        Icon(
          Icons.home,
          color: Colors.white,
        ),
        Icon(
          Icons.payment,
          color: Colors.white,
        ),
        Icon(
          Icons.chat,
          color: Colors.white,
        ),
        Icon(
          Icons.settings,
          color: Colors.white,
        )
      ],
      color: const Color.fromARGB(255, 0, 128, 128),
      onTap: (int value) {
        setState(() {
          widget.tabController.index = value;
        });
      },
    );
  }
}

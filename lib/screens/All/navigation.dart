import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:nazalapp/Nazal/view/nazal.dart';

class Navigation extends StatefulWidget {
  TabController tabController;
  Navigation({Key? key, required this.tabController}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      height: 64,
      color: Color.fromARGB(255, 0, 128, 128),
      items: [
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
      onTap: (int value) {
        setState(() {
          widget.tabController.index = value;
        });
      },
      backgroundColor: Colors.transparent,
    );
  }
}

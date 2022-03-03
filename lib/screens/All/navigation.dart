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
    return MotionTabBar(
      textStyle: const TextStyle(
        // fontFamily: 'Robo',
        fontSize: 12,
        color: Color.fromARGB(255, 230, 229, 229),
        fontWeight: FontWeight.w500,
      ),
      useSafeArea: true,
      tabIconSelectedColor: Colors.teal[800],
      tabBarColor: Colors.teal[800],
      tabIconColor: Colors.grey[300],
      tabSelectedColor: Colors.grey[300],
      initialSelectedTab: 'Home',
      onTabItemSelected: (int value) {
        setState(() {
          widget.tabController.index = value;
        });
      },
      labels: const ['Home', 'Transaction', 'Notifications', 'About'],
      icons: const [
        Icons.home,
        Icons.payment,
        Icons.notifications,
        Icons.settings
      ],
    );
  }
}

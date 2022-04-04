import 'package:flutter/material.dart';

import 'package:nazalapp/studentsapp/ALL/Stu_navigation.dart';
import 'package:nazalapp/studentsapp/ALL/tabbar.dart';

class StudentsHome extends StatefulWidget {
  const StudentsHome({Key? key}) : super(key: key);

  @override
  State<StudentsHome> createState() => _StudentsHomeState();
}

class _StudentsHomeState extends State<StudentsHome>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 4, vsync: this, initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: StudentNavigation(tabController: _tabController),
      body: Tabbarstudent(tabController: _tabController),
    );
  }
}

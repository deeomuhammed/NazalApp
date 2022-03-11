import 'package:flutter/material.dart';
import 'package:nazalapp/studentsapp/screen/about/Student_aboutpage.dart';
import 'package:nazalapp/studentsapp/screen/chat/Student_chatpage.dart';
import 'package:nazalapp/studentsapp/screen/home/Student_homepage.dart';
import 'package:nazalapp/studentsapp/screen/payment/Studentpaymentpage.dart';

class Tabbarstudent extends StatelessWidget {
  TabController tabController;
  Tabbarstudent({Key? key, required this.tabController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: const [
        StudentHome(),
        StudentPayment(),
        StudentChat(),
        StudentAbout()
      ],
      controller: tabController,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}

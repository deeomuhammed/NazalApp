import 'package:flutter/material.dart';

import 'package:nazalapp/screens/Home/Home.dart';
import 'package:nazalapp/screens/Message/chat/chat.dart';

import 'package:nazalapp/screens/about/about.dart';
import 'package:nazalapp/screens/transaction/public.dart';

import 'package:nazalapp/screens/transaction/transaction.dart';

class Tabbar extends StatefulWidget {
  TabController tabController;
  Tabbar({Key? key, required this.tabController}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: widget.tabController,
      children: [Homepage(), SecondPage(), Chatpage(), About()],
    );
  }
}

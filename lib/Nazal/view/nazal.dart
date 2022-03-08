import 'package:flutter/material.dart';
import 'package:nazalapp/screens/All/body.dart';
import 'package:nazalapp/screens/All/navigation.dart';

class Nazal extends StatefulWidget {
  const Nazal({Key? key}) : super(key: key);

  @override
  State<Nazal> createState() => _NazalState();
}

class _NazalState extends State<Nazal> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, initialIndex: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Navigation(tabController: _tabController),
      body: Tabbar(tabController: _tabController),
    );
  }
}

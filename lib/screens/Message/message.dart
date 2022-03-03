import 'package:flutter/material.dart';
import 'package:nazalapp/screens/Message/admission/admission.dart';
import 'package:nazalapp/screens/Message/chat/chat.dart';

class Mesaage extends StatefulWidget {
  Mesaage({Key? key}) : super(key: key);

  @override
  State<Mesaage> createState() => _MesaageState();
}

class _MesaageState extends State<Mesaage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 10,
        title: const Text('',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'ub',
                fontWeight: FontWeight.w400,
                fontSize: 28)),
        backgroundColor: Colors.teal[800],
        elevation: 0,
        bottom: TabBar(
            unselectedLabelColor: Colors.grey[400],
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text('CHATS',
                    style: TextStyle(
                        fontFamily: 'ub',
                        fontWeight: FontWeight.w100,
                        fontSize: 18)),
              ),
              Tab(
                child: Text('ADMISSION',
                    style: TextStyle(
                        fontFamily: 'ub',
                        fontWeight: FontWeight.w100,
                        fontSize: 18)),
              ),
            ]),
      ),
      body: TabBarView(
        children: const [Chatpage(), Admissionpage()],
        controller: _tabController,
      ),
    );
  }
}

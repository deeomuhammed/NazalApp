import 'package:flutter/material.dart';

import 'package:nazalapp/screens/transaction/admission/admission.dart';

import 'package:nazalapp/screens/transaction/transaction.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage>
    with SingleTickerProviderStateMixin {
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
        toolbarHeight: 5,
        elevation: 0,
        bottom: TabBar(
            unselectedLabelColor: Colors.grey[400],
            indicatorColor: Colors.white,
            controller: _tabController,
            tabs: const [
              Tab(
                child: Text('Transcation',
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
        children: [Transactonpage(), Admissionpage()],
        controller: _tabController,
      ),
    );
  }
}

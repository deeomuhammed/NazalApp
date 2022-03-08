import 'package:flutter/material.dart';

class Transactonpage extends StatefulWidget {
  Transactonpage({Key? key}) : super(key: key);

  @override
  State<Transactonpage> createState() => _TransactonpageState();
}

class _TransactonpageState extends State<Transactonpage> {
  FloatingActionButton one = FloatingActionButton(
    backgroundColor: Colors.grey[300],
    onPressed: () {},
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Paid List',
          style: TextStyle(
              color: Colors.teal[800],
              // color: Color.fromARGB(255, 21, 151, 25),
              fontWeight: FontWeight.bold,
              fontFamily: 'baloo',
              fontSize: 18),
        ),
        Text('0',
            style: TextStyle(
                // color: Color.fromARGB(255, 21, 151, 25),
                color: Colors.teal[800],
                fontWeight: FontWeight.bold,
                fontFamily: 'baloo',
                fontSize: 23))
      ],
    ),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))),
  );

  FloatingActionButton two = FloatingActionButton(
    backgroundColor: Colors.grey[300],
    onPressed: () {},
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'UnPaid List',
          style: TextStyle(
              color: Color.fromARGB(255, 216, 18, 4),
              fontWeight: FontWeight.bold,
              fontFamily: 'baloo',
              fontSize: 16),
        ),
        Text('0',
            style: TextStyle(
                color: Color.fromARGB(255, 216, 18, 4),
                fontWeight: FontWeight.bold,
                fontFamily: 'baloo',
                fontSize: 23))
      ],
    ),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20))),
  );

  bool? ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 28),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Hostel Fee',
                        style: TextStyle(
                            fontFamily: 'ub',
                            // fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Text('July 2002',
                          style: TextStyle(
                              fontFamily: 'ub',
                              // fontWeight: FontWeight.b,
                              fontSize: 20)),
                    ],
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 135,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 128, 128),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
            )),
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 75,
                width: 135,
                child: one,
              ),
              Container(
                height: 75,
                width: 135,
                child: two,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterTop,
        body: Padding(
            padding: const EdgeInsets.only(top: 60),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text('Online Payments',
                      style: TextStyle(
                          color: Color.fromARGB(255, 4, 59, 50),
                          fontFamily: 'ub',
                          fontWeight: FontWeight.w400,
                          fontSize: 26)),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (ctx, index) {
                      return ListTile(
                          title: const Text('Muhammed'),
                          leading: const Icon(Icons.notifications),
                          subtitle: const Text('4000/-'),
                          trailing: Checkbox(
                              activeColor: Colors.teal[800],
                              value: ischecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  ischecked = value;
                                });
                              }));
                    },
                    separatorBuilder: (ctx, index) {
                      return const Divider();
                    },
                    itemCount: 10),
              ),
            ])));
  }
}

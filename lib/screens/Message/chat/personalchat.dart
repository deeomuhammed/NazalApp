import 'package:flutter/material.dart';

class Personal extends StatelessWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  color: Colors.teal[900],
                )),
            SizedBox(
              width: 20,
            )
          ],
          centerTitle: true,
          title: Text('Name',
              style: TextStyle(
                  color: Colors.teal[900],
                  fontFamily: 'ub',
                  fontWeight: FontWeight.w400,
                  fontSize: 28)),
          elevation: .2,
          backgroundColor: Colors.grey[300],
        ),
        body: Stack(children: [
          Container(
            alignment: Alignment.bottomCenter,
            color: Colors.teal[900],
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: TextField(),
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ))
        ]));
  }
}

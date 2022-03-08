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
                  color: Colors.teal[800],
                )),
            SizedBox(
              width: 20,
            )
          ],
          centerTitle: true,
          title: Text('Name',
              style: TextStyle(
                  color: Colors.teal[800],
                  fontFamily: 'ub',
                  fontWeight: FontWeight.w400,
                  fontSize: 28)),
          elevation: .2,
          backgroundColor: Colors.grey[300],
        ),
        body: Stack(children: [
          Container(
            alignment: Alignment.bottomCenter,
            color: Color.fromARGB(255, 14, 100, 100),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(30.0),
              ),
              margin: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 16.0,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 9.0,
                horizontal: 20.0,
              ),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    cursorColor: Colors.teal[800],
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Aa',
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5)),
                  )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send,
                        size: 31,
                        color: Color.fromARGB(255, 14, 100, 100),
                      ))
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(bottom: 90),
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

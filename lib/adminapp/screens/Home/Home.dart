import 'package:flutter/material.dart';
import 'package:nazalapp/adminapp/screens/Home/room.dart';
import 'package:nazalapp/adminapp/screens/Home/studentshome.dart';

class Homepage extends StatelessWidget {
  Homepage({Key? key}) : super(key: key);
  List<Card> page = [const Card(), const Card(), const Card()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: AppBar(
                automaticallyImplyLeading: false,
                centerTitle: true,
                elevation: 0,
                backgroundColor: Colors.grey[300],
                titleSpacing: 10,
                title: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    cursorColor: Colors.teal[800],
                    cursorHeight: 24,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefix: const SizedBox(
                        width: 15,
                      ),
                      hintText: 'Search',
                      suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                          color: Colors.teal[800]),
                    ),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Card(
                        color: Colors.orange[900],
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: IconButton(
                            onPressed: () {}, icon: const Icon(Icons.add))),
                  )
                ]),
          ),
        ),
        body: ListView(children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Roomcard(),
              const SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Students',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'turbo',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const Studentscard()
            ],
          ),
        ]),
      ),
    );
  }
}

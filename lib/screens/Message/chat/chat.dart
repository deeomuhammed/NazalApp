import 'package:flutter/material.dart';
import 'package:nazalapp/screens/Message/chat/personalchat.dart';

class Chatpage extends StatelessWidget {
  const Chatpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 14, 100, 100),
        toolbarHeight: 80,
        centerTitle: true,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 3, 77, 77),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: 45,
                height: 45,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu_outlined),
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Text('Messages',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'ub',
                      fontWeight: FontWeight.w400,
                      fontSize: 28)),
              SizedBox(
                width: 50,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 3, 77, 77),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: 45,
                height: 45,
                child: IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
              ),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromARGB(255, 14, 100, 100),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 6, 0),
                  child: ListView.separated(
                    separatorBuilder: (ctx, index) {
                      return SizedBox(height: 22);
                    },
                    itemBuilder: (ctx, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) {
                            return Personal();
                          }));
                        },
                        child: ListTile(
                          subtitle: Row(children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text('New Message'),
                          ]),
                          trailing: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '12:00 PM',
                                style: TextStyle(
                                    fontFamily: 'ub',
                                    color: Colors.grey[300],
                                    fontSize: 10),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.teal[800],
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(30),
                                )),
                            width: 60,
                            height: 30,
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.teal[800],
                            radius: 30,
                          ),
                          title: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text('Name',
                                  style: TextStyle(
                                      fontFamily: 'ub',
                                      fontWeight: FontWeight.w100,
                                      fontSize: 18)),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: 10,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

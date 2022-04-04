import 'package:flutter/material.dart';
import 'package:nazalapp/studentsapp/screen/chat/personalchat.dart';

class StudentChat extends StatelessWidget {
  const StudentChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 0, 128, 128),
        toolbarHeight: 80,
        centerTitle: true,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 3, 77, 77),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: 45,
                height: 45,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu_outlined),
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              const Text('Messages',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'ub',
                      fontWeight: FontWeight.w400,
                      fontSize: 28)),
              const SizedBox(
                width: 50,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 3, 77, 77),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: 45,
                height: 45,
                child: IconButton(
                    icon: const Icon(
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
            color: const Color.fromARGB(255, 0, 128, 128),
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
                      return const SizedBox(height: 22);
                    },
                    itemBuilder: (ctx, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) {
                            return const StPersonalchat();
                          }));
                        },
                        child: ListTile(
                          subtitle: Row(children: const [
                            SizedBox(
                              width: 10,
                            ),
                            Text('New Message'),
                          ]),
                          trailing: Container(
                            child: Center(
                              child: Text(
                                'Today',
                                style: TextStyle(
                                    fontFamily: 'rh',
                                    color: Colors.orange[900],
                                    fontSize: 12),
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.4),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(30),
                                )),
                            width: 60,
                            height: 30,
                          ),
                          leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://cdn.icon-icons.com/icons2/1736/PNG/512/4043260-avatar-male-man-portrait_113269.png'),
                            backgroundColor: Colors.white,
                            radius: 30,
                          ),
                          title: Row(
                            children: const [
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

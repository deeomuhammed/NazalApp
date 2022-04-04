import 'package:flutter/material.dart';
import 'package:nazalapp/adminapp/screens/about/private/Aboutapp.dart';
import 'package:nazalapp/adminapp/screens/about/private/contact.dart';
import 'package:nazalapp/adminapp/screens/about/private/profile.dart';
import 'package:nazalapp/adminapp/screens/about/private/rooms.dart';
import 'package:nazalapp/adminapp/screens/about/private/students.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: Colors.grey[300],
              snap: false,
              pinned: false,
              floating: false,
              expandedHeight: 120,
              flexibleSpace: const FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('assests/image/Group 6 y.png'),
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int items) {
              return Column(
                children: [
                  const SizedBox(height: 35.0),
                  Container(
                      height: 90,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                              colors: [Colors.orange, Colors.deepOrange])),
                      child: CircleAvatar(
                        backgroundColor: Colors.teal[800],
                        radius: 40,
                        child: const Icon(
                          Icons.hotel,
                        ),
                      )),
                  const SizedBox(height: 13.0),
                  const Text(
                    "Hostel Name",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    "Place",
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                  const SizedBox(height: 43.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (() => Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return const Profile();
                              }))),
                          child: ListTile(
                            trailing: const Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                            ),
                            leading: Icon(
                              Icons.person,
                              size: 32,
                              color: Colors.teal[800],
                            ),
                            title: const Text('My Profile'),
                          ),
                        ),
                        const Divider(),
                        InkWell(
                          onTap: (() => Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return const Students();
                              }))),
                          child: ListTile(
                            trailing: const Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                            ),
                            leading: Icon(
                              Icons.group,
                              size: 32,
                              color: Colors.teal[800],
                            ),
                            title: const Text('Students'),
                          ),
                        ),
                        const Divider(),
                        InkWell(
                          onTap: (() => Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return const Rooms();
                              }))),
                          child: ListTile(
                            trailing: const Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                            ),
                            leading: Icon(
                              Icons.bed,
                              size: 32,
                              color: Colors.teal[800],
                            ),
                            title: const Text('Rooms'),
                          ),
                        ),
                        const Divider(),
                        InkWell(
                          onTap: (() => Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return const Contact();
                              }))),
                          child: ListTile(
                            trailing: const Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                            ),
                            leading: Icon(
                              Icons.message,
                              size: 32,
                              color: Colors.teal[800],
                            ),
                            title: const Text('Contact us'),
                          ),
                        ),
                        const Divider(),
                        InkWell(
                          onTap: (() => Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return const Aboutapp();
                              }))),
                          child: ListTile(
                            trailing: const Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                            ),
                            leading: Icon(
                              Icons.info_rounded,
                              size: 32,
                              color: Colors.teal[800],
                            ),
                            title: const Text('About'),
                          ),
                        ),
                        const SizedBox(
                          height: 80,
                        )
                      ],
                    ),
                  )
                ],
              );
            }, childCount: 1))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nazalapp/studentsapp/screen/about/private/Aboutapp.dart';
import 'package:nazalapp/studentsapp/screen/about/private/contact.dart';
import 'package:nazalapp/studentsapp/screen/about/private/profile.dart';
import 'package:nazalapp/studentsapp/screen/about/private/rooms.dart';
import 'package:nazalapp/studentsapp/screen/about/private/students.dart';

class StudentAbout extends StatelessWidget {
  const StudentAbout({Key? key}) : super(key: key);

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
              flexibleSpace: FlexibleSpaceBar(
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
                        backgroundImage: NetworkImage(
                            'https://cdn.icon-icons.com/icons2/1736/PNG/512/4043260-avatar-male-man-portrait_113269.png'),
                        backgroundColor: Colors.white,
                        radius: 40,
                      )),
                  const SizedBox(height: 13.0),
                  const Text(
                    " Name",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 43.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (() => Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return StProfile();
                              }))),
                          child: ListTile(
                            trailing: Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                            ),
                            leading: Icon(
                              Icons.person,
                              size: 32,
                              color: Colors.teal[800],
                            ),
                            title: Text('My Profile'),
                          ),
                        ),
                        Divider(),
                        InkWell(
                          onTap: (() => Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return StStudents();
                              }))),
                          child: ListTile(
                            trailing: Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                            ),
                            leading: Icon(
                              FontAwesomeIcons.building,
                              size: 32,
                              color: Colors.teal[800],
                            ),
                            title: Text('About Hostel'),
                          ),
                        ),
                        Divider(),
                        InkWell(
                          onTap: (() => Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return StRooms();
                              }))),
                          child: ListTile(
                            trailing: Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                            ),
                            leading: Icon(
                              Icons.bed,
                              size: 32,
                              color: Colors.teal[800],
                            ),
                            title: Text('Room Mates'),
                          ),
                        ),
                        Divider(),
                        InkWell(
                          onTap: (() => Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return StContact();
                              }))),
                          child: ListTile(
                            trailing: Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                            ),
                            leading: Icon(
                              Icons.message,
                              size: 32,
                              color: Colors.teal[800],
                            ),
                            title: Text('Contact Nazal'),
                          ),
                        ),
                        Divider(),
                        InkWell(
                          onTap: (() => Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return StAboutapp();
                              }))),
                          child: ListTile(
                            trailing: Icon(
                              Icons.arrow_drop_down,
                              size: 30,
                            ),
                            leading: Icon(
                              Icons.info_rounded,
                              size: 32,
                              color: Colors.teal[800],
                            ),
                            title: Text('About'),
                          ),
                        ),
                        SizedBox(
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

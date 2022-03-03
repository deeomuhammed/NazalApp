import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              snap: false,
              pinned: false,
              floating: false,
              expandedHeight: 150,
              flexibleSpace: FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('assests/image/Group 6 copy.png'),
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
              return Column(
                children: [
                  const SizedBox(height: 55.0),
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
                        ListTile(
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
                        Divider(),
                        ListTile(
                          trailing: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                          ),
                          leading: Icon(
                            Icons.group,
                            size: 32,
                            color: Colors.teal[800],
                          ),
                          title: Text('Students'),
                        ),
                        Divider(),
                        ListTile(
                          trailing: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                          ),
                          leading: Icon(
                            Icons.bed,
                            size: 32,
                            color: Colors.teal[800],
                          ),
                          title: Text('Rooms'),
                        ),
                        Divider(),
                        ListTile(
                          trailing: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                          ),
                          leading: Icon(
                            Icons.message,
                            size: 32,
                            color: Colors.teal[800],
                          ),
                          title: Text('Contact us'),
                        ),
                        Divider(),
                        ListTile(
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

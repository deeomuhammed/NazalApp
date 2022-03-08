import 'package:flutter/material.dart';

// import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class Admissionpage extends StatefulWidget {
  const Admissionpage({Key? key}) : super(key: key);

  @override
  State<Admissionpage> createState() => _AdmissionpageState();
}

class _AdmissionpageState extends State<Admissionpage> {
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  @override
  FloatingActionButton one = FloatingActionButton(
    backgroundColor: Colors.grey[300],
    onPressed: () {},
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Total Bed',
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
      children: [
        Text(
          'Students',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'baloo',
            fontSize: 18,
            color: Colors.teal[800],
          ),
        ),
        Text('0',
            style: TextStyle(
                color: Colors.teal[800],
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
                  children: [
                    Text(
                      'Current Status',
                      style: TextStyle(
                          fontFamily: 'ub',
                          // fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text('2 Bed Free',
                        style: TextStyle(
                            color: Color.fromARGB(255, 238, 186, 159),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text('New Admission',
                    style: TextStyle(
                        color: Colors.teal[900],
                        fontFamily: 'ub',
                        fontWeight: FontWeight.w400,
                        fontSize: 26)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: ExpansionTile(
                          childrenPadding: EdgeInsets.only(bottom: 10),
                          textColor: Colors.teal[800],
                          title: Text(
                            'Muhammed$index',
                          ),
                          children: [
                            ListTile(
                              leading:
                                  Icon(Icons.person, color: Colors.teal[800]),
                              title: Text('Name $index'),
                            ),
                            ListTile(
                              leading: Icon(Icons.house_rounded,
                                  color: Colors.teal[800]),
                              title: Text('House Name $index'),
                            ),
                            ListTile(
                              leading:
                                  Icon(Icons.place, color: Colors.teal[800]),
                              title: Text('Place $index'),
                            ),
                            ListTile(
                              leading:
                                  Icon(Icons.phone, color: Colors.teal[800]),
                              title: Text('Phone $index'),
                            ),
                            ListTile(
                              title: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 10),
                                child: Card(
                                    color: Colors.grey[300],
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: TextField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'Add to a Room ')),
                                    )),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 20, 12),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Add Student'),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.teal[800]),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

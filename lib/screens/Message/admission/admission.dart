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
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      backgroundColor: Colors.grey[300],
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: Padding(
        padding: const EdgeInsets.only(top: 15),
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
                            Text('Name$index'),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Adress$index'),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Place$index'),
                            SizedBox(
                              height: 20,
                            ),
                            Text('Phone$index'),
                            SizedBox(
                              height: 20,
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

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class StAboutapp extends StatelessWidget {
  const StAboutapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        elevation: 0,
        title: Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            Image(
              image: AssetImage('assests/image/Group 6 y.png'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.teal[800],
                thickness: 1,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text('How Can Nazal Help You ?',
                  style: TextStyle(
                      color: Colors.teal[900],
                      fontFamily: 'ub',
                      fontWeight: FontWeight.w400,
                      fontSize: 23)),
            ),
            const Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                  'You Can Manage All Your Hostel Things Through The Nazal App And Find Out About The Conditions  In Your Hostel Anytime, Anywhere Through The Application .You Will Be Able To Manage Room Information, Hostel Student Information, Fee Payments  In A Timely Manner',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'baloo',
                      fontWeight: FontWeight.bold,
                      fontSize: 17)),
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text('*  We dont share any data with third parties',
                  style: TextStyle(
                      color: Color.fromARGB(255, 206, 18, 5),
                      fontFamily: 'baloo',
                      fontWeight: FontWeight.bold,
                      fontSize: 17)),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.teal[800],
                thickness: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (() {
                      return whatsapp();
                    }),
                    child: Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 35,
                      color: Colors.teal[800],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      return instagram();
                    },
                    child: Icon(
                      FontAwesomeIcons.instagram,
                      size: 34,
                      color: Colors.teal[800],
                    ),
                  ),
                  SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      return mail();
                    },
                    child: Icon(
                      Icons.mail_outline,
                      size: 38,
                      color: Colors.teal[800],
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  instagram() async {
    await launch('https://www.instagram.com/deeo.in/');
  }

  void whatsapp() async {
    await launch('https://wa.me/+917994968692');
  }

  telegram() async {
    await launch('https://telegram.me/deeomuhammed');
  }

  mail() async {
    await launch('mailto:domuhammed5@gmail.com');
  }
}

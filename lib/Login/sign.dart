import 'package:flutter/material.dart';
import 'package:nazalapp/Login/adminsignup.dart';
import 'package:nazalapp/Login/signup.dart';

import 'package:nazalapp/Nazal/view/nazal.dart';

class SignPublic extends StatelessWidget {
  const SignPublic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(224, 224, 224, 1),
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 85, 40, 0),
            child: Text(
              "Signup as",
              style: TextStyle(
                  color: Color.fromARGB(250, 2, 94, 94),
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7, right: 62, top: 85),
            child: Image.asset('assests/image/Learning-cuate.png'),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 34, 40, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 300,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 0, 128, 128)
                                .withOpacity(.3),
                            // blurRadius: 20,
                            offset: Offset(7, 10),
                          )
                        ]),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 3,
                                      color: Color.fromARGB(255, 0, 128, 128)
                                          .withOpacity(.4)))),
                          child: InkWell(
                            autofocus: true,
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return const SignUpStudent();
                              }));
                            },
                            child: Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(horizontal: 60),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromARGB(250, 2, 94, 94),
                              ),
                              child: Center(
                                child: Text(
                                  "Student",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (ctx) {
                                return SignUpAdmin();
                              }));
                            },
                            child: Container(
                              height: 50,
                              width: 180,
                              margin: EdgeInsets.symmetric(horizontal: 60),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.orange[900],
                              ),
                              child: Center(
                                child: Text(
                                  "Admin",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}

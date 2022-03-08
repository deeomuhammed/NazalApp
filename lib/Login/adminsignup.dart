import 'package:flutter/material.dart';
import 'package:nazalapp/Login/Loginpage.dart';

import 'package:nazalapp/adminapp/Nazal/nazal.dart';

class SignUpAdmin extends StatelessWidget {
  const SignUpAdmin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 75, 30, 19),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(250, 2, 94, 94),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Create an account if you are a ",
                    style: TextStyle(fontSize: 12.5, color: Colors.grey[400]),
                  ),
                  Text(
                    "Hostel Admin",
                    style: TextStyle(
                        fontSize: 12.5,
                        color: Color.fromARGB(255, 107, 107, 107)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 0, 128, 128).withOpacity(.2),
                        // Color.fromARGB(255, 0, 128, 128).withOpacity(.2),
                        // blurRadius: 20,
                        offset: Offset(7, 12),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: Column(children: [
                    Container(
                      height: 63,
                      padding: EdgeInsets.all(5),
                      child: TextField(
                          decoration: InputDecoration(
                              prefix: SizedBox(
                                width: 15,
                              ),
                              labelText: ' Hostel Name ',
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60))))),
                    ),
                    Container(
                      height: 63,
                      padding: EdgeInsets.all(5),
                      child: TextField(
                          decoration: InputDecoration(
                              prefix: SizedBox(
                                width: 15,
                              ),
                              labelText: ' Place ',
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60))))),
                    ),
                    Container(
                      height: 63,
                      padding: EdgeInsets.all(5),
                      child: TextField(
                          decoration: InputDecoration(
                              prefix: SizedBox(
                                width: 15,
                              ),
                              labelText: ' Phone',
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60))))),
                    ),
                    Container(
                      height: 63,
                      padding: EdgeInsets.all(5),
                      child: TextField(
                          decoration: InputDecoration(
                              prefix: SizedBox(
                                width: 15,
                              ),
                              labelText: ' Email ',
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60))))),
                    ),
                    Container(
                      height: 63,
                      padding: EdgeInsets.all(5),
                      child: TextField(
                          decoration: InputDecoration(
                              prefix: SizedBox(
                                width: 15,
                              ),
                              labelText: ' Password',
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60))))),
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                    return Nazal();
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
                      "Signup",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return LoginPage();
                      }));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " Already have an account?",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                        Text(
                          " Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.5),
                        ),
                      ],
                    )),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

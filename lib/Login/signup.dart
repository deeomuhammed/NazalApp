import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nazalapp/Login/Loginpage.dart';

import 'package:nazalapp/studentsapp/ALL/studentNazal.dart';

class SignUpStudent extends StatelessWidget {
  SignUpStudent({Key? key}) : super(key: key);

  TextEditingController stname = TextEditingController();
  TextEditingController sthouse = TextEditingController();
  TextEditingController stplace = TextEditingController();
  TextEditingController stphone = TextEditingController();
  TextEditingController stemail = TextEditingController();
  TextEditingController stpassword = TextEditingController();

  Future<void> Stwritedata(String? uid) {
    CollectionReference students =
        FirebaseFirestore.instance.collection('Students');
    return students.doc(uid).set({
      'Name': stname.text,
      'Email': stemail.text,
      'Password': stpassword.text,
      'HouseName': sthouse.text,
      'Place': stplace.text,
      'Phone': stphone.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 25, 30, 0),
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
                    "Student",
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
                          controller: stname,
                          decoration: InputDecoration(
                              prefix: SizedBox(
                                width: 15,
                              ),
                              labelText: ' Name ',
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60))))),
                    ),
                    Container(
                      height: 63,
                      padding: EdgeInsets.all(5),
                      child: TextField(
                          controller: stemail,
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
                          controller: stphone,
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
                          controller: stpassword,
                          decoration: InputDecoration(
                              prefix: SizedBox(
                                width: 15,
                              ),
                              labelText: ' Password ',
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60))))),
                    ),
                    Container(
                      height: 63,
                      padding: EdgeInsets.all(5),
                      child: TextField(
                          controller: sthouse,
                          decoration: InputDecoration(
                              prefix: SizedBox(
                                width: 15,
                              ),
                              labelText: ' House Name',
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60))))),
                    ),
                    Container(
                      height: 63,
                      padding: EdgeInsets.all(5),
                      child: TextField(
                          controller: stplace,
                          decoration: InputDecoration(
                              prefix: SizedBox(
                                width: 15,
                              ),
                              labelText: ' Place',
                              alignLabelWithHint: true,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(60))))),
                    ),
                    ExpansionTile(
                      title: Text('Select Hostel'),
                      children: [
                        ListTile(
                          title: Text('Hidaya Palazhi'),
                        ),
                        ListTile(
                          title: Text('Baabtra Hostel'),
                        )
                      ],
                    ),
                  ]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  try {
                    UserCredential userCredentialStudent = await FirebaseAuth
                        .instance
                        .createUserWithEmailAndPassword(
                            email: stemail.text, password: stpassword.text);

                    Stwritedata(userCredentialStudent.user?.uid);
                    Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                      return StudentsHome();
                    }));
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'email-already-in-use') {
                      print('3465');
                    }
                    if (e.code == 'weak-password') {
                      print('1234');
                    }
                  }
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
                height: 17,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " Already have an account?",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return LoginPage();
                        }));
                      },
                      child: Text(
                        " Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 15.5),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nazalapp/Login/Loginpage.dart';
import 'package:nazalapp/const.dart';

import 'package:nazalapp/studentsapp/ALL/studentNazal.dart';

class SignUpStudent extends StatefulWidget {
  const SignUpStudent({Key? key}) : super(key: key);

  @override
  State<SignUpStudent> createState() => _SignUpStudentState();
}

class _SignUpStudentState extends State<SignUpStudent> {
  TextEditingController stname = TextEditingController();

  TextEditingController sthouse = TextEditingController();

  TextEditingController stplace = TextEditingController();

  TextEditingController stphone = TextEditingController();

  TextEditingController stemail = TextEditingController();

  TextEditingController stpassword = TextEditingController();

  String dropdownvalue = '    Select Hostel';
  final formkey = GlobalKey<FormState>();

  var items = [
    '    Select Hostel',
    'Nazal Hostel',
    'Baabtra Hostel',
    'Hidaya Hostel',
    'Deeo Hostel',
  ];

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
      'isHostel': 0
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
              const Text(
                "Sign up",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(250, 2, 94, 94),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Create an account if you are a ",
                    style: TextStyle(fontSize: 12.5, color: Colors.grey[400]),
                  ),
                  const Text(
                    "Student",
                    style: TextStyle(
                        fontSize: 12.5,
                        color: Color.fromARGB(255, 107, 107, 107)),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 0, 128, 128)
                            .withOpacity(.2),
                        offset: const Offset(7, 12),
                      )
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                  child: Form(
                    key: formkey,
                    child: Column(children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Empty';
                              }
                              return null;
                            },
                            controller: stname,
                            decoration: const InputDecoration(
                                prefix: SizedBox(
                                  width: 15,
                                ),
                                labelText: ' Name ',
                                alignLabelWithHint: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(60))))),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Empty';
                              }
                              return null;
                            },
                            controller: stemail,
                            decoration: const InputDecoration(
                                prefix: SizedBox(
                                  width: 15,
                                ),
                                labelText: ' Email ',
                                alignLabelWithHint: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(60))))),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Empty';
                              } else if (isNumeric(stphone.text) == false) {
                                return 'Enter Valid Phone Number';
                              }
                              return null;
                            },
                            controller: stphone,
                            decoration: const InputDecoration(
                                prefixText: '+91',
                                labelText: ' Phone',
                                alignLabelWithHint: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(60))))),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Empty';
                              }
                              return null;
                            },
                            controller: stpassword,
                            decoration: const InputDecoration(
                                prefix: SizedBox(
                                  width: 15,
                                ),
                                labelText: ' Password ',
                                alignLabelWithHint: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(60))))),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Empty';
                              }
                              return null;
                            },
                            controller: sthouse,
                            decoration: const InputDecoration(
                                prefix: SizedBox(
                                  width: 15,
                                ),
                                labelText: ' House Name',
                                alignLabelWithHint: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(60))))),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Empty';
                              }
                              return null;
                            },
                            controller: stplace,
                            decoration: const InputDecoration(
                                prefix: SizedBox(
                                  width: 15,
                                ),
                                labelText: ' Place',
                                alignLabelWithHint: true,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(60))))),
                      ),
                      DropdownButton(
                          icon: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(Icons.keyboard_arrow_down),
                          ),
                          alignment: Alignment.centerRight,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          menuMaxHeight: 150,
                          value: dropdownvalue,
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          })
                    ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (formkey.currentState!.validate()) {
                    try {
                      UserCredential userCredentialStudent = await FirebaseAuth
                          .instance
                          .createUserWithEmailAndPassword(
                              email: stemail.text, password: stpassword.text);

                      Stwritedata(userCredentialStudent.user?.uid);
                      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
                        return const StudentsHome();
                      }));
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'email-already-in-use') {
                        snack(
                            text: 'Email already in use',
                            context: context,
                            data: Icons.error,
                            color: Colors.red);
                      }
                      if (e.code == 'weak-password') {
                        snack(
                            text: 'Weak password',
                            context: context,
                            data: Icons.error,
                            color: Colors.red);
                      }
                    }
                  }
                },
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(250, 2, 94, 94),
                  ),
                  child: const Center(
                    child: Text(
                      "Signup",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
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
                      child: const Text(
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

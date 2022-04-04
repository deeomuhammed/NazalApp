import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:nazalapp/Login/Loginpage.dart';
import 'package:nazalapp/const.dart';

class SignUpAdmin extends StatelessWidget {
  SignUpAdmin({Key? key}) : super(key: key);

  TextEditingController hostelName = TextEditingController();
  TextEditingController place = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Future<void> writedata(String? uid) {
      CollectionReference hostel =
          FirebaseFirestore.instance.collection('Hostels');
      return hostel.doc(uid).set({
        'Email': email.text,
        'Password': password.text,
        'HostelName': hostelName.text,
        'Place': place.text,
        'Phone': phone.text,
        'isHostel': 1
      }).then((value) {
        snack(
            text: 'Hostel Accound Created  , Login Now',
            context: context,
            data: Icons.verified,
            color: Colors.green);
      }).catchError((error) {
        snack(
            text: 'An unexpected error has occurred,(Retry).',
            context: context,
            data: Icons.verified,
            color: Colors.green);
      });
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 75, 30, 19),
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
                    "Hostel Admin",
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
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: SingleChildScrollView(
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
                                controller: hostelName,
                                decoration: const InputDecoration(
                                    prefix: SizedBox(
                                      width: 15,
                                    ),
                                    labelText: ' Hostel Name ',
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
                                controller: place,
                                decoration: const InputDecoration(
                                    prefix: SizedBox(
                                      width: 15,
                                    ),
                                    labelText: ' Place ',
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
                                  } else if (isNumeric(phone.text) == false) {
                                    return 'Enter Valid Phone Number';
                                  }
                                  return null;
                                },
                                controller: phone,
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
                                controller: email,
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
                                  }
                                  return null;
                                },
                                controller: password,
                                decoration: const InputDecoration(
                                    prefix: SizedBox(
                                      width: 15,
                                    ),
                                    labelText: ' Password',
                                    alignLabelWithHint: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(60))))),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (formkey.currentState!.validate()) {
                    try {
                      UserCredential userCredentialAdmin = await FirebaseAuth
                          .instance
                          .createUserWithEmailAndPassword(
                              email: email.text, password: password.text);
                      await writedata(userCredentialAdmin.user?.uid);
                      await Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (ctx) {
                        return LoginPage();
                      }));
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'email-already-in-use') {
                        snack(
                            text: 'Email already in use',
                            context: context,
                            data: Icons.error,
                            color: Colors.red);
                      } else if (e.code == 'weak-password') {
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
                      children: const [
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

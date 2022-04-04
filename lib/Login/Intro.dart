import 'package:flutter/material.dart';
import 'package:nazalapp/Login/Loginpage.dart';
import 'package:nazalapp/Login/sign.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          const SizedBox(
            height: 40,
          ),
          Image.asset('assests/image/Group 6 y.png'),
          const SizedBox(
            height: 26,
          ),
          Image.asset('assests/image/Mobile login-bro.png'),
          const SizedBox(
            height: 46,
          ),
          InkWell(
            onTap: (() {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return LoginPage();
              }));
            }),
            child: Container(
              height: 40,
              width: 140,
              margin: const EdgeInsets.symmetric(horizontal: 60),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromARGB(250, 2, 94, 94),
              ),
              child: const Center(
                child: Text(
                  "Log in",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: (() {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return const SignPublic();
              }));
            }),
            child: Container(
              height: 35,
              width: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.orange[900],
              ),
              child: const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ]));
  }
}

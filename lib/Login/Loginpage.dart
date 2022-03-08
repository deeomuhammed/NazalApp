import 'package:flutter/material.dart';
import 'package:nazalapp/Login/sign.dart';
import 'package:nazalapp/Login/signup.dart';
import 'package:nazalapp/Nazal/view/nazal.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 55, 40, 0),
              child: Text(
                "Login",
                style: TextStyle(
                    color: Color.fromARGB(250, 2, 94, 94),
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(40, 5, 40, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 291,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 0, 128, 128)
                                  .withOpacity(.2),
                              // blurRadius: 20,
                              offset: Offset(7, 10),
                            )
                          ]),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Color.fromARGB(255, 0, 128, 128)
                                            .withOpacity(.2)))),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                        child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color:
                              Color.fromARGB(255, 0, 128, 128).withOpacity(.5)),
                    )),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (ctx) {
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
                              "Login",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 35,
                    ),
                    Center(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (ctx) {
                              return SignPublic();
                            }));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                " Don't have an account?",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                              Text(
                                " Signup",
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
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 18),
              child: Image.asset('assests/image/Enter OTP-cuate.png'),
            ),
          ]),
        ]),
      ),
    );
  }
}

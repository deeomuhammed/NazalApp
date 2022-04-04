import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nazalapp/Login/Intro.dart';
import 'package:nazalapp/studentsapp/screen/payment/pages/Expense/gsheets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Gsheet.init();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nazal App',
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 0, 128, 128),
      ),
      debugShowCheckedModeBanner: false,
      home: const Intro(),
    );
  }
}

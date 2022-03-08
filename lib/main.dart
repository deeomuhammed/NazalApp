import 'package:flutter/material.dart';
import 'package:nazalapp/Login/Intro.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
        colorSchemeSeed: Color.fromARGB(255, 0, 128, 128),
      ),
      debugShowCheckedModeBanner: false,
      home: Intro(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mobmart/screens/get_started_screen.dart';
import 'package:mobmart/screens/login_screen.dart';
import 'package:mobmart/screens/sign_up_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //routes now names
      //TODO: Take note of this
      initialRoute: GetStarted.id,
      routes: {
        GetStarted.id: (context) => GetStarted(),
        Loginpage.id: (context) => Loginpage(),
        SignUp.id: (context) => SignUp()
      },
    );
  }
}

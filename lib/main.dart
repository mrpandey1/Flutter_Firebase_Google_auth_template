import 'package:My_First_Project/app/app_sign_in/sign_in_page.dart';
import 'package:My_First_Project/app/landing.dart';
import 'package:My_First_Project/services/auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Time Tracker',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: LandingPage(
          auth: Auth(),
        ));
  }
}

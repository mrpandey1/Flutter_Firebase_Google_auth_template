import 'package:My_First_Project/app/app_sign_in/sign_in_page.dart';
import 'package:My_First_Project/app/home_page.dart';
import 'package:My_First_Project/services/auth.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key, this.auth}) : super(key: key);
  final AuthBase auth;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User>(
      stream: auth.onAuthStateChanged,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          User user = snapshot.data;
          if (user == null) {
            return SignInPage(
              auth: auth,
            );
          } else {
            return HomePage(
              auth: auth,
            );
          }
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}

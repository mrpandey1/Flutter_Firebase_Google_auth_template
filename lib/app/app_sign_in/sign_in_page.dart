import 'package:My_First_Project/app/app_sign_in/email_sign_in_page.dart';
import 'package:My_First_Project/app/app_sign_in/sign_in_button.dart';
import 'package:My_First_Project/app/app_sign_in/social_sign_in_button.dart';
import 'package:My_First_Project/services/auth.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  SignInPage({@required this.auth});
  final AuthBase auth;
  Future<void> _signInAnonymously() async {
    try {
      await auth.signInAnonymously();
      // onSignIn(user);
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      await auth.signInWithGoogle();
      // onSignIn(user);
    } catch (e) {
      print(e.toString());
    }
  }

  void _signInWithEmail(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      fullscreenDialog: true,
      builder: (context) => EmailSignInPage(
        auth: auth,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Time Tracker'),
          elevation: 3.0,
        ),
        body: _buildContent(context));
  }

  Widget _buildContent(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Sign In',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 40,
            ),
            SocialSignInButton(
              assetName: 'images/google-logo.png',
              text: 'Sign in with Google',
              textColor: Colors.black87,
              color: Colors.white,
              onPressed: _signInWithGoogle,
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 8,
            ),
            SignInButton(
              text: 'Sign in with Email',
              textColor: Colors.white,
              color: Colors.teal[700],
              onPressed: () => _signInWithEmail(context),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'or',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            SizedBox(
              height: 8,
            ),
            SignInButton(
              text: 'Go anonymous',
              textColor: Colors.black,
              color: Colors.lime[300],
              onPressed: _signInAnonymously,
            ),
          ],
        ));
  }
}

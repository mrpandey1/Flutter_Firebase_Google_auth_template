import 'package:My_First_Project/shared/custom_raised_button.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Time Tracker'),
          elevation: 3.0,
        ),
        body: _buildContent());
  }

  Widget _buildContent() {
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
              height: 8,
            ),
            CustomRaisedButton(
              child: Text(
                'Sign in with Google',
                style: TextStyle(color: Colors.black87, fontSize: 15),
              ),
              color: Colors.white,
              borderRadius: 4.0,
              onPressed: () {},
            ),
          ],
        ));
  }

  void _signInWithGoogle() {}
}

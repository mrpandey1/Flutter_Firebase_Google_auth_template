import 'package:My_First_Project/app/app_sign_in/email_sign_in_form.dart';
import 'package:My_First_Project/services/auth.dart';
import 'package:flutter/material.dart';

class EmailSignInPage extends StatelessWidget {
  final AuthBase auth;

  const EmailSignInPage({@required this.auth});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        elevation: 2.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              child: EmailSignInForm(
            auth: auth,
          )),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}

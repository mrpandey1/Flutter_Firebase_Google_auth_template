import 'package:My_First_Project/shared/form_submit_button.dart';
import 'package:flutter/material.dart';

class EmailSignInForm extends StatefulWidget {
  @override
  _EmailSignInFormState createState() => _EmailSignInFormState();
}

class _EmailSignInFormState extends State<EmailSignInForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String email;
  void _submit() {
    print('email ${_emailController.text} email ${_passwordController.text}');
  }

  List<Widget> _buildChildren() {
    return [
      TextField(
        controller: _emailController,
        decoration:
            InputDecoration(labelText: 'Email', hintText: 'test@test.com'),
      ),
      SizedBox(
        height: 8,
      ),
      TextField(
        controller: _passwordController,
        decoration: InputDecoration(
          labelText: 'Password',
        ),
        obscureText: true,
      ),
      SizedBox(
        height: 18,
      ),
      FormSubmitButton(
        text: 'Sign in',
        onPressed: _submit,
      ),
      FlatButton(
        child: Text('Need an account ? Register'),
        onPressed: () {},
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: _buildChildren(),
      ),
    );
  }
}

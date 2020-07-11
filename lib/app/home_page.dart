import 'package:My_First_Project/services/auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({@required this.auth});
  final AuthBase auth;
  Future<void> _signOut() async {
    try {
      await auth.signOut();
      // onSignOut();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Logout',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            onPressed: _signOut,
          )
        ],
      ),
    );
  }
}

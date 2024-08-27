import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, this.username, this.password});

  final String? username;
  final String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.person,
              size: 100.0,
            ),
            Text(
              'Welcome $username',
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 2.0,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              'Your password is $password',
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 2.0,
                fontFamily: 'Poppins',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

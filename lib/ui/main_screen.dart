import 'package:flutter/material.dart';
import 'package:project_api/model/users.dart';
import 'package:project_api/service/api_service.dart';

class MainScreen extends StatefulWidget {
  const MainScreen(
      {super.key, this.username, this.password, this.firstName, this.lastName});

  final String? username;
  final String? password;
  final String? firstName;
  final String? lastName;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final Future<List<Users>?> users = ApiService().getUsers();

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
              'Welcome ${widget.username}',
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 2.0,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              'Your password is ${widget.password}',
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 2.0,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              'First Name: ${widget.firstName}',
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 2.0,
                fontFamily: 'Poppins',
              ),
            ),
            Text(
              'Last Name: ${widget.lastName}',
              style: TextStyle(
                fontSize: 18,
                letterSpacing: 2.0,
                fontFamily: 'Poppins',
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(),
            ),
          ],
        ),
      ),
    );
  }
}

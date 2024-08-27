import 'package:flutter/material.dart';
import 'package:project_api/ui/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? username;
  String? password;

  @override
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  var isSignedIn = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
              width: 100.0,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Login to your account',
              style: TextStyle(fontFamily: 'Poppins', fontSize: 24.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(fontFamily: 'Poppins'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                controller: passwordController,
                enableSuggestions: false,
                autocorrect: false,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(fontFamily: 'Poppins'),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      //kondisi bila username null
                      if (usernameController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Username cannot be empty'),
                          ),
                        );
                      } else {
                        isSignedIn = true;
                      }

                      if (passwordController.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Password cannot be empty'),
                          ),
                        );
                      } else {
                        isSignedIn = true;
                      }

                      if (usernameController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(
                              username: usernameController.text,
                              password: passwordController.text,
                            ),
                          ),
                        );
                      }
                    });
                  },
                  style: ButtonStyle(
                      elevation: WidgetStatePropertyAll(5.0),
                      backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              style: ButtonStyle(
                elevation: WidgetStatePropertyAll(5.0),
                backgroundColor: WidgetStatePropertyAll(Colors.purple),
              ),
              child: Text(
                'Register',
                style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

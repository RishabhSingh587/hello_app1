import 'package:flutter/material.dart';

import 'login.dart'; // Import your Login page

import 'registration.dart'; // Import your Registration page

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(), // This is your main page

        '/login': (context) => SignInPage(),

        '/register': (context) => RegisterPage(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Navigate to the login page when the login button is pressed

                Navigator.pushNamed(context, '/login');
              },
              child: Text("Login"),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the registration page when the register button is pressed

                Navigator.pushNamed(context, '/register');
              },
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}

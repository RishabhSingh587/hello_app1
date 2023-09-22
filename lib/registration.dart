import 'package:flutter/material.dart';
import 'package:hello_app/image.dart';
import 'image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String userName = "";
  String password = "";
  String email = "";
  String firstName = "";
  String lastName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                onChanged: (value) {
                  setState(() {
                    userName = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'User Name',
                ),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    firstName = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'First Name',
                ),
              ),
              TextField(
                onChanged: (value) {
                  setState(() {
                    lastName = value;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Last Name',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your registration logic here
                  print('User Name: $userName');
                  print('Password: $password');
                  print('Email: $email');
                  print('First Name: $firstName');
                  print('Last Name: $lastName');
                },
                child: Text('Register'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add functionality to upload profile picture
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ImageUploadPage(),
                    ),
                  );
                },
                child: Text('Upload Profile Picture'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

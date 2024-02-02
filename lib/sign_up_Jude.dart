import 'package:flutter/material.dart';

// void main() {
//   runApp(SignUpScreen());
// }

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Logo here
              Image.asset(
                  'assets/webminds logo.png'), // Replace with your logo asset
              Text('Webminds GH',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 40), // Provides spacing between logo and form

              // Name TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20), // Spacing between TextFields

              // Email TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),

              // Password TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),

              // Re-enter Password TextField
              TextField(
                decoration: InputDecoration(
                  labelText: 'Re-enter Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 40), // Spacing before the sign up button

              // Sign up Button
              ElevatedButton(
                child: Text('Sign up', style: TextStyle(fontSize: 18)),
                onPressed: () {
                  // Implement sign-up logic
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity,
                      50), // double.infinity is the width and 50 is the height
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

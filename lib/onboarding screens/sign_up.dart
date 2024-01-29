import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/webminds logo.png',
                fit: BoxFit.cover,
              ),
              Container(
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: 'Full Name',
                        filled: true,
                        fillColor: Color.fromRGBO(230, 245, 238, 1),
                        contentPadding: EdgeInsets.all(1.0),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: 'Email',
                        filled: true,
                        fillColor: Color.fromRGBO(230, 245, 238, 1),
                        contentPadding: EdgeInsets.all(1.0),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: 'Password',
                        filled: true,
                        fillColor: Color.fromRGBO(230, 245, 238, 1),
                        contentPadding: EdgeInsets.all(1.0),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey),
                        hintText: 'Re-enter Password',
                        filled: true,
                        fillColor: Color.fromRGBO(230, 245, 238, 1),
                        contentPadding: EdgeInsets.all(1.0),
                      ),
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('SignUp'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

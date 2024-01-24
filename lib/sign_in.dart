import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webminds_mobile/complete_profile.dart';
import 'package:webminds_mobile/profile_type_screen.dart';

void main() {
  runApp(SignInScreen());
}

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
           appBar: AppBar(
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text("Sign In Screen"),
      ),


        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset('assets/logo.svg'),
              Text('Webminds GH', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 40),

              TextField(
                decoration: InputDecoration(
                  labelText: 'Username / email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),

              TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),

              ElevatedButton(
                child: Text('Sign in', style: TextStyle(fontSize: 18)),
                // onPressed: () {
                //   // Implement sign-in logic
                //   // For demo purposes, navigate to complete profile page
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => CompleteProfileScreen(),
                //     ),
                //   );
                // },

                                        onPressed: () {
                          // Navigate to ProfileTypeScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileTypeScreen(),
                            ),
                          );
                        },
                                        style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              SizedBox(height: 20),

              Text('or', style: TextStyle(fontSize: 16, color: Colors.grey)),
              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                    icon: SvgPicture.asset('assets/google_logo.svg'),
                    onPressed: () {
                      // Implement Google sign-in logic
                    },
                  ),

                  IconButton(
                    icon: SvgPicture.asset('assets/linkedin_logo.svg'),
                    onPressed: () {
                      // Implement LinkedIn sign-in logic
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

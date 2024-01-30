import 'package:flutter/material.dart';
import 'package:webminds_mobile/mentor_list_pages/mentor_home.dart';
import 'package:webminds_mobile/mentor_list_pages/mentor_view.dart';

// void main() {
//   runApp(MaterialApp(
//     home: CompleteProfileScreen(),
//   ));
// }

class CompleteProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Complete your profile',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('/Users/judeukana/MestProjects/FlutterProjects/webminds_mobile/assets/MEST_HEADSHOT.JPG'),
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Michael Jackson', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    // Add any additional text or information under the name
                  ],
                ),
              ],
            ),

            SizedBox(height: 30),

            TextField(
              decoration: InputDecoration(
                labelText: 'tech stack',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'type of mentor',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'topics',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'country',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),

            ElevatedButton(
              child: Text('Continue', style: TextStyle(fontSize: 18)),

              onPressed: () {

                 Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MentorListPage(),
                     
                    ),
                  );
                // Implement continue action

                // After completing the profile, pop the current screen and go back to the SignInScreen
                // Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                onPrimary: Colors.white,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

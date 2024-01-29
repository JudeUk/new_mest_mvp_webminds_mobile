import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Tutor App',
//       theme: ThemeData(
//         primaryColor: Colors.white,
//       ),
//       home: TutorScreen(),
//     );
//   }
// }

class TutorScreen extends StatelessWidget {

  String imagePhoto = "assets/MEST_HEADSHOT.JPG";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       title: 'Tutor App',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 24.0, bottom: 16.0),

              
        










                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:AssetImage(imagePhoto),
                    radius: 30,
                  ),
                  title: Text(
                    'Welcome Charles,',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Mr. Charles Bossman',
                    style: TextStyle(color: Colors.black54, fontSize: 18),
                  ),
                  trailing: Text(
                    '25 tutorials made\n\$30/hour',
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    SessionWidget(
                      name: 'John Adotey',
                      duration: '1:30hrs',
                      accepted: false,
                    ),
                    SessionWidget(
                      name: 'Peter Bansah',
                      duration: '1:30hrs',
                      accepted: true,
                    ),
                    SessionWidget(
                      name: 'Emily Quayson',
                      duration: '1:30hrs',
                      accepted: true,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    minimumSize: Size(double.infinity, 50), // double.infinity is the width and 50 is the height
                  ),
                  onPressed: () {
                    // TODO: Implement generate meeting link action
                  },
                  child: Text(
                    'Generate Meeting Link',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SessionWidget extends StatelessWidget {
  final String name;
  final String duration;
  final bool accepted;

  SessionWidget({
    Key? key,
    required this.name,
    required this.duration,
    required this.accepted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text('Python'),
      trailing: Text(duration),
      leading: accepted
          ? Icon(Icons.check_circle, color: Colors.green)
          : Icon(Icons.radio_button_unchecked),
      onTap: () {
        // TODO: Implement toggle accept action
      },
    );
  }
}
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
  String logo = "assets/webminds_logo.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 4.0, // Add elevated double 4
            leading:
                Image.asset(logo), // Add logo in the leading position
            actions: [
              IconButton(
                icon: Icon(Icons
                    .notifications), // Add notifications icon in the actions position
                onPressed: () {},
              ),
            ],
          ),
          body: SafeArea(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Text('Welcome Charles',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.normal,
                    )),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(imagePhoto),
                      radius: 30,
                    ),
                    title: Text(
                      'Mr Charles Bossman,',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Row(
                      children: [
                        Chip(
                          label: const Text('25 tutorials made'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Chip(
                          label: const Text('USD 30/hour'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
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
                      minimumSize: Size(double.infinity,
                          50), // double.infinity is the width and 50 is the height
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
          )),
    );
  }
} // END: class TutorScreen

class SessionWidget extends StatelessWidget {
  final String name;
  final String duration;
  final bool accepted;

  const SessionWidget({
    Key? key,
    required this.name,
    required this.duration,
    required this.accepted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text(duration),
      trailing: accepted ? Icon(Icons.check) : Icon(Icons.close),
    );
  }
} // END: class SessionWidget
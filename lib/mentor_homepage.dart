import 'package:flutter/material.dart';

class MentorHome extends StatefulWidget {
  const MentorHome({Key? key}) : super(key: key);

  @override
  State<MentorHome> createState() => _MentorHomeState();
}

class _MentorHomeState extends State<MentorHome> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(16),
          child: Image.asset('assets/images/webminds logo.png'),
        ),
        actions: [
          ClipOval(
            child: Icon(
              Icons.notifications,
              color: Colors.green,
            ),
          ),
        ],
      ),
     
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Nunya',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 10),
                   Text(
                    'It is a great day to share your knowledge!!',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Container(
                padding: EdgeInsets.only(top: 20),
                child: Divider(
                  thickness: 1,
                  color: Colors.blueGrey[200],
                ),
            ),
            SizedBox(height: 17),
                   Text(
                    'Sessions  (0)',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(                  
                  child: Center(child: Text( 'Your generated sessions will appear here', style: TextStyle(color: Colors.grey),)),
                    color: Color.fromARGB(255, 129, 235, 184).withAlpha(100),
                    height: 140,
                    width: double.infinity,             
                ),
              ), 
                ],
              ),
            ),
            Container(
        width: double.infinity,
        padding: EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {            
           },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),            
            ),            
          ),
          child: Text(
            'Create A New Meeting Link',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ),
          ],
        ),
        
      ),
    );
  }
}

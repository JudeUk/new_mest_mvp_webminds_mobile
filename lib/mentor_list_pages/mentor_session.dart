import 'package:flutter/material.dart';

class MyMentorSession extends StatelessWidget {
  const MyMentorSession({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            leading: Image.asset('assets/webminds_logo.png'), actions: []),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Welcome Charles!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Its a great day to share your knowledge!',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Divider(
              indent: 15,
              endIndent: 15,
            ),
            Text(
              'Sessions (1)',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(
                  230,
                  245,
                  238,
                  1,
                ),
              ),
              height: 350,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 200,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15.0, right: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: Text(
                            'GHS40/HR',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'Charles Ofori',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'Web Development',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.lock_clock,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text('1:45')
                      ],
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Continue Session',
                style: TextStyle(
                    decoration: TextDecoration.underline, color: Colors.black),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(2, 205, 132, 1)),
                onPressed: () {},
                child: Text(
                  'Create a New Meeting Link',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),),
          ],
        ),
      ),
    );
  }
}

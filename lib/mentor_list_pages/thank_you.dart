import 'package:flutter/material.dart';

class ThankYouPage extends StatelessWidget {
  const ThankYouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // first box
          SizedBox(),
          // second box
          Expanded(
            child: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Container(
                    // color: Color.fromRGBO(230, 245, 238, 1),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(230, 245, 238, 1),
                    ),
                    height: 400,
                    width: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: ClipOval(
                            child: Icon(
                              Icons.check_circle_rounded,
                              color: Color.fromRGBO(2, 205, 132, 1),
                              size: 70,
                            ),
                          ),
                        ),
                        // Thank you text
                        Text(
                          'Thank you!',
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                        //Success text
                        Text(
                          'You have successfully booked a session!',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.normal),
                        ),

                        //ELEVATED Button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromRGBO(2, 205, 132, 1),
                          ),
                          onPressed: () {},
                          child: Text(
                            'OK',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // third box
          SizedBox()
        ],
      ),
    );
  }
}

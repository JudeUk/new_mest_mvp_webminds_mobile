import 'package:flutter/material.dart';

class NewMentorView extends StatefulWidget {
  const NewMentorView({super.key});

  @override
  State<NewMentorView> createState() => _NewMentorViewState();
}

class _NewMentorViewState extends State<NewMentorView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.green[300],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/MEST_HEADSHOT.JPG',
                  height: 200,
                  width: 300
                  ,
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                "Jude Ukana",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Senior Product Designer',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.green[100],
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'About',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'A student and programming enthusiast, Jude is passionate about building solutions that solve complex problems',
                    ),
                  ],
                ),
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
                height: 200,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 150,
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 15.0, right: 15),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              child: Text(
                                'GHS40/HR',
                                style: TextStyle(
                                  // fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
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
                          Text('Web Development'),
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
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[300],
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Book a Session',
                    style: TextStyle(
                      color: Colors.white,
                    ),
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

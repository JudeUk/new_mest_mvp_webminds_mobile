import 'package:flutter/material.dart';

class ViewMentorProfile extends StatefulWidget {
  const ViewMentorProfile({super.key});

  @override
  State<ViewMentorProfile> createState() => _ViewMentorProfileState();
}

class _ViewMentorProfileState extends State<ViewMentorProfile> {
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/MEST_HEADSHOT.JPG',
                  height: 300,
                  width: 300,
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
              const Text(
                'USD150 / Session',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white,backgroundColor: Colors.greenAccent,
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
              const Padding(
                padding: EdgeInsets.only(left: 32.0, right: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reviews',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.reviews)
                  ],
                ),
              ),
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/MEST_HEADSHOT.JPG',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  const Column(
                    children: [
                      Text(
                        'Shalom Andrea',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'This is my honest review of the mentor',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ],
              ),
              ElevatedButton(
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
            ],
          ),
        ),
      ),
    );
  }
}

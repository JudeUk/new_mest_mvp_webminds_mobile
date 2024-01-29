import 'package:flutter/material.dart';

class MentorHome extends StatefulWidget {
  const MentorHome({Key? key}) : super(key: key);

  @override
  State<MentorHome> createState() => _MentorHomeState();
}

class _MentorHomeState extends State<MentorHome> {
  List<Map<String, dynamic>> mentors = List.generate(
      7,
      (index) => {
            "name": 'Mikey',
            "role": 'Frontend Engineer',
            'image': 'assets/images/Abena.JPG',
          });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    'Welcome Nunya!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.search,
                        size: 24,
                        color: Colors.grey,
                      ),
                      filled: true,
                      fillColor: Color.fromRGBO(230, 245, 238, 1),
                      hintText: 'Search for mentors',
                      hintStyle: TextStyle(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: () {}, child: Text('UI/UX')),
                TextButton(onPressed: () {}, child: Text('WEB DESIGN')),
                TextButton(onPressed: () {}, child: Text('LIFESTYLE')),
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemBuilder: (BuildContext context, int pos) {
                  Map<String, dynamic> item = mentors[pos];

                  return Card(
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: SizedBox(
                          height: 80,
                          width: 80,
                          child: Image.asset(
                            item["image"],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        item["name"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      subtitle: Text(
                        item["role"],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      trailing: Icon(
                        Icons.favorite,
                        color: Colors.red[300],
                      ),
                      onTap: () {
                        // Add your onTap logic here
                      },
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int pos) {
                  return const SizedBox(height: 16);
                },
                itemCount: mentors.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

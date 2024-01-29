import 'package:flutter/material.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key, required this.title});

  final String title;

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  List<String> feedItems = [
    "Bright",
    "Abena",
    "Grace",
    "Joe",
    "Jason",
  ];
  final double coverHeight = 280;
  final double profileHeight = 140;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  height: coverHeight,
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1683009427500-71296178737f?q=80&w=871&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: profileHeight / 2,
                  backgroundImage: const NetworkImage(
                      "https://images.unsplash.com/photo-1671920090611-9a40303b52cb?q=80&w=930&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                ),
                const SizedBox(
                  height: 120,
                ),
                const Text('Yaw Essumang')
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: feedItems.length,
                itemBuilder: (BuildContext context, int position) {
                  String name = feedItems[position];
                  return _MyProfilePageView(name, position);
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _MyProfilePageView(String name, int position) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: SizedBox(
        height: 100,
        child: ListTile(
          title: Text(name),
          trailing: const Icon(Icons.more_horiz),
        ),
      ),
    );
  }
}

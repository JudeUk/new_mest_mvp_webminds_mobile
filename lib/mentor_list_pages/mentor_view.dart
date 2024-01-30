import 'package:flutter/material.dart';
import 'package:webminds_mobile/mentor_list_pages/mentor_favorites.dart';
import 'package:webminds_mobile/mentor_list_pages/mentor_home.dart';
import 'package:webminds_mobile/mentor_list_pages/mentor_profile.dart';


class MentorListPage extends StatefulWidget {
  const MentorListPage({super.key});

  @override
  State<MentorListPage> createState() => _MentorListPageState();
}

class _MentorListPageState extends State<MentorListPage> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    MentorHome(),
    MentorFavorites(),
    MentorProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(16),
          child: Image.asset('assets/webminds logo.png'),
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

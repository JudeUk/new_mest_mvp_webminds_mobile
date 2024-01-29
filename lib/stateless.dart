import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class myAPP extends StatelessWidget {
//   int currentPage = 0;

//   myAPP({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: myAPPTwo(),
//     );
//   }
// }

class myAPPTwo extends StatefulWidget {
  const myAPPTwo({super.key});

  @override
  State<myAPPTwo> createState() => _myAPPTwo();
}

class _myAPPTwo extends State<myAPPTwo> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FLUTTER APP'),
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              debugPrint('Floating Action Button Pressed');
            }),
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Home')
          ],
          onDestinationSelected: (int index) {
            setState(() {
              currentPage = index;
            });
          },
          selectedIndex: currentPage,
        ));
  }
}

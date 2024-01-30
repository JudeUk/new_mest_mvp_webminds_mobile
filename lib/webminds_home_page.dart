import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Container(
      color: Colors.white,
      child: Expanded(
        child: Container(
          height: 100,
          width: 100,
          child: Image.asset(
            'assets/images/webminds logo.png',
            // fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}

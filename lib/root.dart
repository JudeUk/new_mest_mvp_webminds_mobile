import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webminds_mobile/roottwo.dart';
import 'package:webminds_mobile/stateless.dart';

class rootApp extends StatelessWidget {
  const rootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Profile Screen',
      theme: ThemeData(

        primaryColor: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        )
        
      ),
    home: const roottwoApp(),
    );

  }
}
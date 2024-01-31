import 'package:flutter/material.dart';
import 'package:webminds_mobile/complete_mentor_profile.dart';
import 'package:webminds_mobile/mentee_requests_screen.dart';
import 'package:webminds_mobile/profile_type_screen.dart';
import 'package:webminds_mobile/root.dart';
import 'package:webminds_mobile/schedule_screen.dart';
import 'package:webminds_mobile/sign_in_Jude.dart';
import 'package:webminds_mobile/sign_up_Jude.dart';
import 'package:webminds_mobile/stateless.dart';

void main() {
  runApp( MaterialApp(
          // home: ScheduleScreen(),
          // Navigator.of(context).pushNamed('/sign_in');
  // Routes
    initialRoute: '/',
      routes: <String, WidgetBuilder> {
        "/": (context)=> const ScheduleScreen(),
      }

      
  ));
}


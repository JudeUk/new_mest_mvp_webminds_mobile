import 'package:flutter/material.dart';
import 'package:webminds_mobile/complete_mentor_profile.dart';
import 'package:webminds_mobile/mentee_requests_screen.dart';
import 'package:webminds_mobile/onboarding%20screens/sign_in.dart';
import 'package:webminds_mobile/profile_type_screen.dart';
import 'package:webminds_mobile/root.dart';
import 'package:webminds_mobile/schedule_screen.dart';
import 'package:webminds_mobile/sign_in_Jude.dart';
import 'package:webminds_mobile/sign_up_Jude.dart';
import 'package:webminds_mobile/stateless.dart';

void main() {
  runApp( MaterialApp(
    
    home: SignInScreen(),
    //  home:SignInPage(),
    // home: SignUpScreen(), // signup screen

    //    home: CompleteProfileScreen(), // complete mentor profile, refine with finishing touches
          // home: ScheduleScreen(),// mentor views list of mentees requests
    // home: SignInScreen(),
    // home: rootApp() // practice screen, listview cards
  //  home: myAPPTwo(), //practice screen, stateless
    // home: ProfileTypeScreen(), // select profile type screen
  
      
  ));
}


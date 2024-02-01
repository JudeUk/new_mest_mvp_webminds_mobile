import 'package:flutter/material.dart';
import 'package:webminds_mobile/complete_mentor_profile.dart';
import 'package:webminds_mobile/mentee_requests_screen.dart';
import 'package:webminds_mobile/mentor_list_pages/thank_you.dart';
import 'package:webminds_mobile/mentor_list_pages/view_mentor.dart';
import 'package:webminds_mobile/profile_type_screen.dart';
import 'package:webminds_mobile/root.dart';
import 'package:webminds_mobile/schedule_screen.dart';
import 'package:webminds_mobile/sign_in_Jude.dart';
import 'package:webminds_mobile/sign_up_Jude.dart';
import 'package:webminds_mobile/stateless.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp( MaterialApp(
    
    // home: SignInScreen(),
    // home: SignUpScreen(), // signup screen

    //    home: CompleteProfileScreen(), // complete mentor profile, refine with finishing touches
          // home: TutorScreen(),
          // ignore: prefer_const_constructors
          home: ThankYouPage(),
          // home: ViewMentorProfile(),// mentor views list of mentees requests

    // home: SignInScreen(),
    // home: rootApp() // practice screen, listview cards
  //  home: myAPPTwo(), //practice screen, stateless
    // home: ProfileTypeScreen(), // select profile type screen
      
  ));
}


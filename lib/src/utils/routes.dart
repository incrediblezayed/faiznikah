import 'package:faiznikah/src/app/static/screens/advertisement.dart';
import 'package:faiznikah/src/app/static/screens/blog.dart';
import 'package:faiznikah/src/app/static/screens/contactus.dart';
import 'package:faiznikah/src/app/static/screens/event.dart';
import 'package:faiznikah/src/app/static/screens/successstories.dart';
import 'package:faiznikah/src/utils/globals.dart';
import 'screen_index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoutes extends Globals {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        switch (settings.name) {
          case Home.id:
            return Home();
          case ProfileDetails.id:
            final args = settings.arguments as Map<String, dynamic>;
            return ProfileDetails(
                user: args[params.userParam],
                isPremiumUser: args[params.isPremiumParam]);
          case AuthenticationPage.id:
            return const AuthenticationPage();
          case ProfileCreationPage.id:
            return ProfileCreationPage();
          case AllProfilePage.id:
            return const AllProfilePage();
          case AboutUsPage.id:
            return AboutUsPage();
          case PrivacyPolicyPage.id:
            return PrivacyPolicyPage();
          case Blog.id:
            return Blog();
          case Events.id:
            return Events();
          case SuccessStories.id:
            return SuccessStories();
          case Advertisement.id:
            return Advertisement();
          case ContactUs.id:
            return ContactUs();
          default:
            return Home();
        }
      },
    );
  }
}

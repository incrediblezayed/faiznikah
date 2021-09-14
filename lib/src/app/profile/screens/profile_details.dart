import 'package:faiznikah/src/models/user_model.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  static const id = "/profiledetails";
  final User user;
  final bool isPremiumUser;
  const ProfileDetails(
      {Key? key, required this.user, required this.isPremiumUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(isPremiumUser ? "premium" : "not"),
            Text(user.toString())
          ],
        ),
      ),
    );
  }
}

import 'package:faiznikah/src/models/user_model.dart';
import 'package:faiznikah/src/utils/globals.dart';
import 'package:faiznikah/src/utils/screen_index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget with Globals {
  static const id = "/home";
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              Get.toNamed(ProfileCreationPage.id, arguments: {
                params.userParam: User.empty(),
                params.isPremiumParam: false
              });
            },
            child: const Text("Profile")),
      ),
    );
  }
}

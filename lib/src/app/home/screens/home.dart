import 'package:faiznikah/src/app/home/home_services.dart';
import 'package:faiznikah/src/models/user_model.dart';
import 'package:faiznikah/src/utils/globals.dart';
import 'package:faiznikah/src/utils/screen_index.dart';
import 'package:faiznikah/src/widgets/appbar.dart';
import 'package:faiznikah/src/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget with Globals {
  static const id = "/home";
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: AppDrawer(),
      appBar: FaizNikahAppBar(),
      body: Container(),
    );
  }
}

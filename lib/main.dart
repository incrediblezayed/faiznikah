import 'package:faiznikah/src/app.dart';
import 'package:faiznikah/src/app/authentication/authentication_controller.dart';
import 'package:faiznikah/src/app/home/home_controller.dart';
import 'package:faiznikah/src/app/profile/profile_controller.dart';
import 'package:faiznikah/src/utils/hive_data_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final HiveDataHelper hiveDataHelper = Get.put(HiveDataHelper());
  await hiveDataHelper.init();
  Get.put(ProfileController());
  Get.put(AuthenticationController());
  Get.put(HomePageController());
  runApp(const App());
}

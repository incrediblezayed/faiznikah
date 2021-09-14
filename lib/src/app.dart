import 'package:faiznikah/src/app/home/screens/home.dart';
import 'package:faiznikah/src/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Raleway'),
      onGenerateRoute: AppRoutes().onGenerateRoute,
      initialRoute: Home.id,
    );
  }
}

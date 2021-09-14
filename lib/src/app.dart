import 'package:faiznikah/src/app/home/screens/home.dart';
import 'package:faiznikah/src/utils/routes.dart';
import 'package:faiznikah/src/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Raleway',
          primaryColor: AppColors.firstColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                animationDuration: Duration(milliseconds: 800),
                primary: AppColors.firstColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          /* colorScheme: ColorScheme(
              primary: primary,
              primaryVariant: primaryVariant,
              secondary: secondary,
              secondaryVariant: secondaryVariant,
              surface: surface,
              background: background,
              error: error,
              onPrimary: onPrimary,
              onSecondary: onSecondary,
              onSurface: onSurface,
              onBackground: onBackground,
              onError: onError,
              brightness: brightness), */
          pageTransitionsTheme: PageTransitionsTheme(builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          })),
      onGenerateRoute: AppRoutes().onGenerateRoute,
      initialRoute: Home.id,
    );
  }
}

import 'package:discord/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discord',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(46, 49, 54, 1),

        backgroundColor: const Color.fromRGBO(54, 57, 63, 1),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(54, 57, 63, 1),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(54, 57, 63, 1),

        drawerTheme: const DrawerThemeData(
          backgroundColor: Color.fromRGBO(46, 49, 54, 1),
          scrimColor: Colors.transparent,
          elevation: 0,
        ),

        listTileTheme: const ListTileThemeData(
          selectedColor: Color.fromRGBO(66, 70, 77, 1),
          textColor: Color.fromRGBO(185, 187, 190, 1),
          iconColor: Color.fromRGBO(185, 187, 190, 1),
        ),
        // inputDecorationTheme: const InputDecorationTheme(
        //   fillColor: Color.fromRGBO(32, 34, 37, 1),
        // ),
        // textTheme: TextTheme(),
        // textTheme: ,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color.fromRGBO(46, 49, 54, 1),
          onPrimary: Color.fromRGBO(185, 187, 190, 1),
          secondary: Color.fromRGBO(32, 34, 37, 1),
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Color.fromRGBO(54, 57, 63, 1),
          onBackground: Color.fromRGBO(187, 205, 166, 1),
          surface: Colors.black,
          onSurface: Colors.white,
        ),
      ),
      home: Home(),
    );
  }
}

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
        colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Color.fromRGBO(8, 226, 159, 0),
            onPrimary: Colors.white,
            secondary: Color.fromRGBO(22, 233, 242, 0),
            onSecondary: Colors.white,
            error: Colors.red,
            onError: Colors.white,
            background: Color.fromRGBO(8, 226, 159, 0),
            onBackground: Colors.white,
            surface: Colors.black,
            onSurface: Colors.white),
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

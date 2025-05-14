
import 'package:flutter/material.dart';
import 'Screens/BlackScreen.dart';
import 'Screens/GitterScreen.dart';
import 'Screens/GreenScreen.dart';
import 'Screens/N1.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Navigatorpage(),
    );
  }
}


import 'package:code_wings/Projekt/Screens/ShoopingItemScreen.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Shoopingitemscreen(),
    );
  }
}

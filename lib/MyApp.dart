
import 'package:code_wings/HomeScreen.dart';
import 'package:code_wings/NavigationNamedRoutesArgumente/UserScreen.dart';
import 'package:code_wings/Screens/NavigationBase.dart';
import 'package:flutter/material.dart';
import 'NavigationNamedRoutes/Screens.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/HomeScreen',
      routes: {
        UserScreen.routeName: (context) => UserScreen(),
        '/HomeScreen' : (context) => HomeScreen(),
        '/Black' : (context) => BlackScreen(),
        '/Blue' : (context) => BlueScreen(),
        '/Green' : (context) => GreenScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    );
  }
}

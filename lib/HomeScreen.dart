
import 'package:code_wings/NavigationNamedRoutesArgumente/UserScreen.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomeSeite"),),
    body: Center(
      child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, UserScreen.routeName,
                arguments: UserData(name: "Max", email: "test@gmail.com", age: 120)
            );
          },
          child: Text("User: ")),
    )
    );
    
  }
}


/*
Center(
      child: Column(
        children: [
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, "/Blue");
          },
              child: Text("Blue")),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, "/Green");
          },
              child: Text("Green")),
        ],
      ),
    ),

 */
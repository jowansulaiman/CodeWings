

import 'package:code_wings/Screens/BlackScreen.dart';
import 'package:code_wings/Screens/BlueScreen.dart';
import 'package:code_wings/Screens/GreenScreen.dart';
import 'package:flutter/material.dart';

class NavigationBase extends StatefulWidget {
  const NavigationBase({super.key});

  @override
  State<NavigationBase> createState() => _NavigationBaseState();
}

class _NavigationBaseState extends State<NavigationBase> {
  int currentInex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey,),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          children: [
            DrawerHeader(child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("title")
            ],)),
            ListTile(title: Text("Seite 01"),
            onTap: (){
              onTap(0);
            }
              ,),
            ListTile(title: Text("Seite 02"),
            onTap: (){
              onTap(1);
            },),
            ListTile(title: Text("Seite 03"),
            onTap: (){
              onTap(2);
            },),
          ],
        ),
      ),
      body: BuildBody(),
    );
  }
  IndexedStack BuildBody(){
    return IndexedStack(

      index: currentInex,
      children: [
        BlueScreen(),
        GreenScreen(),
        BlackScreen()
      ],
    );
  }

  void onTap(int index) {
    setState(() {
      currentInex = index;
    });
    Navigator.pop(context);
  }
}



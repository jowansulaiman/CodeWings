import 'package:code_wings/Screens/BlackScreen.dart';
import 'package:code_wings/Screens/BlueScreen.dart';
import 'package:code_wings/Screens/GreenScreen.dart';
import 'package:flutter/material.dart';

class Navigatorpage extends StatefulWidget {
  const Navigatorpage({super.key});

  @override
  State<Navigatorpage> createState() => _NavigatorpageState();
}

class _NavigatorpageState extends State<Navigatorpage> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
          //onTap: (index) => setState(() {
          //  currentIndex = index;
          //}),
          onTap:  (index) => pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.bounceOut),
          items: [
            BottomNavigationBarItem(
                icon:Icon( Icons.settings), label: "settings"
            ),
            BottomNavigationBarItem(
                icon:Icon( Icons.home), label: "home"
            ),
            BottomNavigationBarItem(
                icon:Icon( Icons.search), label: "search"
            ),
          ]
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (newIndex){
          setState(() {
            currentIndex = newIndex;
          });
        },
        children: [
          BlueScreen(),
          GreenScreen(),
          BlackScreen(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_todo_list/breakpoints.dart';
import 'package:flutter_todo_list/screen/BlackScreen.dart';
import 'package:flutter_todo_list/screen/BlueScreen.dart';
import 'package:flutter_todo_list/screen/GreenScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= kDesktopBreakpoint) {
        return Material(
          child: Row(
            children: [
              Container(
                width: 250.0,
                child: ListView(children: [
                  ListTile(
                    leading: const Icon(Icons.add),
                    title: const Text("Black"),
                    selected: currentIndex == 0,
                    onTap: () => onTap(0),
                  ),
                  ListTile(
                    leading: const Icon(Icons.view_module_rounded),
                    title: const Text("Green"),
                    selected: currentIndex == 1,
                    onTap: () => onTap(1),
                  ),
                  ListTile(
                    leading: const Icon(Icons.send),
                    title: const Text("blue"),
                    selected: currentIndex == 2,
                    onTap: () => onTap(2),
                  ),
                ]),
              ),
              Expanded(child: buildBody())
            ],
          ),
        );
      } else if (constraints.maxWidth >= kTabletBreakpoint) {
        return Row(
          children: [
            NavigationRail(
                onDestinationSelected: onTap,
                labelType: NavigationRailLabelType.all,
                destinations: const [
                  NavigationRailDestination(
                      icon: Icon(Icons.add), label: Text("Black")),
                  NavigationRailDestination(
                      icon: Icon(Icons.view_module_rounded),
                      label: Text("Green")),
                  NavigationRailDestination(
                      icon: Icon(Icons.send), label: Text("blue"))
                ],
                selectedIndex: currentIndex),
            Expanded(child: buildBody())
          ],
        );
      } else {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          drawer: const Drawer(),
          body: buildBody(),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.add), label: "Black"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.view_module_rounded), label: "Green"),
              BottomNavigationBarItem(icon: Icon(Icons.send), label: "blue"),
            ],
            onTap: onTap,
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      }
    });
  }

  void onTap(newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  IndexedStack buildBody() {
    return IndexedStack(
      index: currentIndex,
      children: const [BlackScreen(), GreenScreen(), BlueScreen()],
    );
  }
}

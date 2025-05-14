


import 'package:code_wings/Screens/BlackScreen.dart';
import 'package:flutter/material.dart';

class BlueScreen extends StatelessWidget {
  const BlueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder:(context) => BlackScreen(),
                ),
                );
              }, child: Text("BlackSeite")),

            ElevatedButton(onPressed: (){
               Navigator.pop(context);
              },
                child: Text("Zurück")
            )
            ],
          )
      ),
    );
  }
}

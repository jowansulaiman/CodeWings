


import 'package:code_wings/Screens/BlueScreen.dart';
import 'package:flutter/material.dart';

class GreenScreen extends StatelessWidget {
  const GreenScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body:  Center(
          child: ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context)  => BlueScreen()
            )
            );
          }, child: Text("BlueSeite"))
      ),
    );
  }
}




import 'package:flutter/material.dart';

class BlackScreen extends StatelessWidget {
  const BlackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: ElevatedButton(
              onPressed: (){
            Navigator.popUntil(context,
                    (context) => context.isFirst );
          },
          child: Text("GreenSeite"))

      ),
    );
  }
}

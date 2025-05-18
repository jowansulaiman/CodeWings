import 'package:flutter/material.dart';

class Shoopingitemscreen extends StatefulWidget {
  const Shoopingitemscreen({super.key});

  @override
  State<Shoopingitemscreen> createState() => _ShoopingitemscreenState();
}

class _ShoopingitemscreenState extends State<Shoopingitemscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Liste"),
      ),
      body: ListView.builder(
          itemBuilder: (context, index){
            return CheckboxListTile(
                value: false,
                onChanged: (value) {

                },
            );
          }
      ),
    );
  }
}

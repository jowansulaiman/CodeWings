
import 'package:flutter/material.dart';

class UserData{
  final String name;
  final String email;
  final int age;

  UserData({required this.name,required  this.email,required  this.age});
}
class UserScreen extends StatelessWidget {
  const UserScreen({super.key});
  static const String routeName = '/user';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as UserData;

    return Scaffold(
      appBar: AppBar(
        title: Text("User: ${args.name}"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("username: ${args.name}"),
            Text("Email: ${args.email}"),
            Text("Age: ${args.age}"),
          ],
        ),
      ),
    );
  }
}

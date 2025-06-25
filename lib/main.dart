import 'package:flutter/material.dart';
// import 'package:flutter_rpg/screens/create/create.dart';
import 'package:flutter_rpg/screens/home/home.dart';
import 'package:flutter_rpg/theme.dart';

void main() {
  runApp( MaterialApp(
    theme: primaryTheme,
    home: Home(),
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Sandbox'),
    ),
    body: Text('sand box data',
    style: TextStyle(
      backgroundColor: Colors.grey,)),
    );
  }
}


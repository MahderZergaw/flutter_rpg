import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title :Text('Your character',
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child:Column(
          children: [
            Text('home'),
              StyledText('home'),
                StyledHeading('home'),
                  StyledTitle('home'),
            FilledButton(onPressed: (){}, child: Text('data'))
          ])
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/screens/create/create.dart';
import 'package:flutter_rpg/screens/home/character_card.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
// import 'package:flutter_rpg/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  // List characters = ['kelemuwa','alemu','feriyat','zeberiga'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title :Text('Your character',
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child:Column(
          children: [
             Expanded(
               child: ListView.builder(
                itemCount: characters.length,
                itemBuilder: (_,index){
                  return CharacterCard(characters[index]);
             }),
             ),
            StyledButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (builder)=> Create()));
                }, child: StyledHeading('Create New'))
          ])
        ),
    );
  }
}
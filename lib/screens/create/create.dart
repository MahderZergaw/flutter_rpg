import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/screens/create/vocation_card.dart';
import 'package:flutter_rpg/screens/home/home.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';

var uuid = Uuid();
class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  final _sloganController = TextEditingController();
  final _nameController = TextEditingController();
  @override
  void dispose() {
    _nameController.dispose();
    _sloganController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  Vocation selectedVocation = Vocation.junkie;
  void updateVocation (Vocation vocation){
setState(() {
  selectedVocation = vocation;
});
  }
  void handleSubmit(){
    if(_nameController.text.trim().isEmpty){
      showDialog(context: context, builder: (builder){
        return AlertDialog(
          title: Center(child: StyledHeading("Missing Character Name")),
          content: StyledText('Every good RPG character needs a great name...'),
          actions: [
            StyledButton(onPressed: (){
              Navigator.pop(builder);
            }, child: StyledText('Close'))
          ],
          actionsAlignment: MainAxisAlignment.center,
        );
      }
      );
      return;
    }
    if(_sloganController.text.trim().isEmpty){
      showDialog(context: context, builder: (builder){
        return AlertDialog(
          title: Center(child: StyledHeading("Missing Character Name")),
          content: StyledText("Every good RPG character needs a great name..."),
          actions: [
            StyledButton(onPressed: (){
              Navigator.pop(builder);
            }, child: StyledText('Close'))
          ],
          actionsAlignment: MainAxisAlignment.center,
        );
      });
      return;
    }
    characters.add(Character(id: uuid.v4(),name: _nameController.text.trim(),vocation: selectedVocation,slogan: _sloganController.text.trim()));
    Navigator.push(context, MaterialPageRoute(builder: (builder)=>Home()));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: StyledHeading("Character Creation"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical:30,horizontal: 20),
        child:SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Icon(Icons.code,color: AppColors.primaryColor,),
              ),
              Center(child: StyledHeading("Welcome New Character"),),
              Center(child: StyledTitle("Create a name & slogan for your character."),),
              SizedBox(height: 30,),
              TextField(
                controller: _nameController,
                cursorColor: AppColors.textColor,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_2),
                  label: StyledText("Character Name"),
                ),
                style: GoogleFonts.kanit(
                 textStyle:  Theme.of(context).textTheme.bodyMedium,),
              ),
              SizedBox(height: 20,),
                TextField(
                  controller: _sloganController,
                cursorColor: AppColors.textColor,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.chat),
                  label: StyledText("Character Slogan"),
                ),
                style: GoogleFonts.kanit(
                 textStyle:  Theme.of(context).textTheme.bodyMedium,),
              ),
              SizedBox(height: 20,),
              Center(child: StyledHeading("Choose a Vocation"),),
              Center(child: StyledTitle("This determine your available skills"),),
              
              SizedBox(height: 10,),
              VocationCard(
                onTap:updateVocation ,
                selected:selectedVocation== Vocation.junkie,
                vocation: Vocation.junkie),
              SizedBox(height: 5,),
              VocationCard(
                onTap:updateVocation,
                selected: selectedVocation== Vocation.ninja,
                vocation: Vocation.ninja),
              SizedBox(height: 5,),
              VocationCard(
                onTap:updateVocation,
                selected:selectedVocation == Vocation.raider,
                vocation: Vocation.raider),
              SizedBox(height: 5,),
              VocationCard(
                onTap: updateVocation,
                selected: selectedVocation == Vocation.wizard,
                vocation: Vocation.wizard),
              SizedBox(height: 5,),
                Center(
                child: Icon(Icons.code,color: AppColors.primaryColor,),
              ),
              SizedBox(height: 10,),
              Center(child: StyledHeading("Good Luck"),),
              Center(child: StyledTitle("And enjoy the journey ahead..."),),
              SizedBox(height: 10,),
              Center(
                child:StyledButton(onPressed: handleSubmit, child: StyledText("Create Character")),
              ),
          
            ],
          ),
        )
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/screens/profile/profile.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';


class CharacterCard extends StatelessWidget {
  const CharacterCard(this.text,{super.key});
   final Character text;

  @override
  Widget build(BuildContext context) {
    return Card(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Image.asset('assets/img/vocations/${text.vocation.image}',width: 80,),
          SizedBox(width: 20,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            StyledHeading(text.name),
            StyledText(text.vocation.title),
            
              ],
            ),
          ),
          Expanded(child:SizedBox()),
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (builder)=>Profile(character:text)));
            }, 
            icon: Icon(Icons.arrow_forward , color: AppColors.textColor,),
         
          )
        ],
      ),
    ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';

class Profile extends StatelessWidget {
const Profile({super.key,
required this.character});

final Character character;
@override
Widget build(BuildContext context) {
return  Scaffold(
  appBar: AppBar(
    title: StyledTitle(character.vocation.name),
  
    ),
        body:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      color: AppColors.secondaryColor.withOpacity(0.3),
                      child: Row(
                        children: [

                      Image.asset('assets/img/vocations/${character.vocation.image}', width:140,height: 140,),
                      SizedBox(width: 10,),
                                
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StyledTitle(character.vocation.name),
                            StyledText(character.vocation.description)
                                  
                          ],
                        ),
                      ),
                        ],
                      ),
                    )
                    
          ],
              ),
        ),
);
}
}
import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledTitle('character creation'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Center(
              child: Icon(Icons.code, color: AppColors.primaryAccent,),
            ),
            Center(
              child: StyledHeading('welcome, new player.'),
            ),
            Center(
              child: StyledText('Create a name & slogan for your character.'),
            ),
            SizedBox(width: 20,)
          ],
        ),
      ),
    );
  }
}
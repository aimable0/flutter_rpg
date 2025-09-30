import 'package:flutter/material.dart';
import 'package:flutter_rpg/screens/create/create.dart';
import 'package:flutter_rpg/screens/home/home.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';

void main() {
  runApp(MaterialApp(theme: primarytheme, home: Create()));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledHeading('Sandbox'),
        backgroundColor: const Color.fromARGB(255, 68, 68, 68),
      ),
      body: Text('Sandbox'),

    );
  }
}
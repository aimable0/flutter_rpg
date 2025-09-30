import 'package:flutter/material.dart';
import 'package:flutter_rpg/models/character.dart';
import 'package:flutter_rpg/models/vocation.dart';
import 'package:flutter_rpg/screens/create/vocation_card.dart';
import 'package:flutter_rpg/shared/styled_button.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class Create extends StatefulWidget {
  const Create({super.key});

  @override
  State<Create> createState() => _CreateState();
}

class _CreateState extends State<Create> {
  // let's add some controllers to track the user's input
  final _nameController = TextEditingController();
  final _sloganController = TextEditingController();

  @override
  void dispose() {
    // throw it; if we don't need it (like if we are not on that page)
    _nameController.dispose();
    _sloganController.dispose();
    super.dispose();
  }

  // handling selected vocation
  Vocation selectedVocation = Vocation.junkie; // default vocation

  void updateVocation(Vocation vocation) {
    setState(() {
      selectedVocation = vocation;
    });
  }

  // handling submit
  void submitHandler() {
    if (_nameController.text.trim().isEmpty) {
      // show error
      return;
    }
    if (_sloganController.text.trim().isEmpty) {
      // show error
      return;
    }

    characters.add(
      Character(
        id: uuid.v4(),
        name: _nameController.text.trim(),
        slogan: _sloganController.text.trim(),
        vocation: selectedVocation,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledTitle('character creation'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
              const Center(child: StyledHeading('welcome, new player.')),
              const Center(
                child: StyledText('Create a name & slogan for your character.'),
              ),
              SizedBox(height: 20),

              // input
              TextField(
                controller: _nameController,
                style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),
                cursorColor: AppColors.textColor,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  label: Text('Character name'),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _sloganController,
                cursorColor: AppColors.textColor,
                style: GoogleFonts.kanit(
                  textStyle: Theme.of(context).textTheme.bodyMedium,
                ),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.chat),
                  label: Text("Character slogan"),
                ),
              ),
              SizedBox(height: 50),
              Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
              Center(child: StyledHeading('chose a vocation')),
              Center(
                child: StyledText('This determines your available skills.'),
              ),

              SizedBox(height: 20),
              // vocations here.
              VocationCard(
                selected: (selectedVocation == Vocation.junkie),
                vocation: Vocation.junkie,
                onTapFunc: updateVocation,
              ),
              VocationCard(
                selected: (selectedVocation == Vocation.wizard),
                vocation: Vocation.wizard,
                onTapFunc: updateVocation,
              ),
              VocationCard(
                selected: (selectedVocation == Vocation.raider),
                vocation: Vocation.raider,
                onTapFunc: updateVocation,
              ),
              VocationCard(
                selected: (selectedVocation == Vocation.ninja),
                vocation: Vocation.ninja,
                onTapFunc: updateVocation,
              ),

              Center(child: Icon(Icons.code, color: AppColors.primaryColor)),
              Center(child: StyledHeading('You are good to go!')),
              Center(
                child: StyledText('Enjoy your character...'),
              ),
              SizedBox(height: 20),
              Center(
                child: StyledButton(
                  onPressed: submitHandler,
                  child: StyledHeading("Create character"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

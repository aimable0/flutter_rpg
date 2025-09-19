import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your characters"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text('Characters List'),

            // test headline medium
            Text("Characters List", style: Theme.of(context).textTheme.headlineMedium),

            // test title medium with Theme.of
            Text("Characters list", style: Theme.of(context).textTheme.titleMedium),
            FilledButton(
              onPressed: () {},
              child: Text('Click me')),
          ],
        ),

      ),
    );
  }
}
import 'package:flutter/material.dart';

class ExampleFont extends StatelessWidget {
  const ExampleFont({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'Custom Fonts',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

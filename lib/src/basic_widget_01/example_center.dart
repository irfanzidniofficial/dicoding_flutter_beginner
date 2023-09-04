import 'package:flutter/material.dart';

class ExampleCenter extends StatelessWidget {
  const ExampleCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Ini Center",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ExamplePadding extends StatelessWidget {
  const ExamplePadding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(30),
            child: Text(
              "Ini Padding",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}

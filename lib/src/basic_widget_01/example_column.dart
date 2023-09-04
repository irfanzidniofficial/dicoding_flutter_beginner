import 'package:flutter/material.dart';

class ExampleColumn extends StatelessWidget {
  const ExampleColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Column"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sebuah Judul",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Icon(Icons.thumb_up),
        ],
      ),
    );
  }
}

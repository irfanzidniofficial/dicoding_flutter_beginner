import 'package:flutter/material.dart';

class ExampleRow extends StatelessWidget {
  const ExampleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Row"),
      ),
      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.share),
          Icon(Icons.thumb_up),
          Icon(Icons.thumb_down)
        ],
      ),
    );
  }
}

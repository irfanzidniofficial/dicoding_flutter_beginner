import 'package:dicoding_flutter_beginner/src/basic_widget_02/example_navigation_secondscreen.dart';
import 'package:flutter/material.dart';

class ExampleNavigationFirstScreen extends StatelessWidget {
  const ExampleNavigationFirstScreen({super.key});
  final String message = 'Hello form first screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ExampleNavigationSecondScreen(message: message);
                },
              ),
            );
          },
          child: const Text("Pindah Screen"),
        ),
      ),
    );
  }
}

import 'package:dicoding_flutter_beginner/src/basic_widget_02/example_button.dart';
import 'package:dicoding_flutter_beginner/src/basic_widget_02/example_input_widget.dart';
import 'package:dicoding_flutter_beginner/src/codelabs/codelabs_first.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExampleInputWidget(),
    );
  }
}

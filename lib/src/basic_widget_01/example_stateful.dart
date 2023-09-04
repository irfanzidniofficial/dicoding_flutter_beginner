// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ExampleStateful extends StatefulWidget {
  const ExampleStateful({super.key});

  @override
  State<ExampleStateful> createState() => _StatefulState();
}

class _StatefulState extends State<ExampleStateful> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
            child: BiggerText(
          text: "Hello Word",
        )),
      ],
    ));
  }
}

// Bigger Text

class BiggerText extends StatefulWidget {
  final String text; // ini parameter widget
  const BiggerText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<BiggerText> createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.text,
          style: TextStyle(fontSize: _textSize),
        ),
        const SizedBox(
          height: 5,
        ),
        ElevatedButton(
          child: const Text("Perbesar"),
          onPressed: () {
            setState(() {
              _textSize = 32.0; // ukuran text diubah menjadi 32
            });
          },
        ),
      ],
    );
  }
}

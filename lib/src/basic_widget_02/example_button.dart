import 'package:flutter/material.dart';

class ExampleButton extends StatefulWidget {
  const ExampleButton({super.key});

  @override
  State<ExampleButton> createState() => _ExampleButtonState();
}

class _ExampleButtonState extends State<ExampleButton> {
  String? language;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
      ),
      body: Column(
        children: [
          const Text("Elevated Button"),
          Center(
            child:
                ElevatedButton(onPressed: () {}, child: const Text("Tombol")),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Text Button"),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Tombol Text Button",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Outline Button"),
          OutlinedButton(
            onPressed: () {},
            child: const Text(
              "Tombol Outline Button",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Icon Button"),
          IconButton(
            onPressed: () {},
            tooltip: 'Increase volume by 10',
            icon: const Icon(
              Icons.volume_up,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("Dropdown Button"),
          DropdownButton(
            items: const [
              DropdownMenuItem(
                value: 'Dart',
                child: Text(
                  "Dart",
                ),
              ),
              DropdownMenuItem(
                value: 'Kotlin',
                child: Text(
                  "Kotlin",
                ),
              ),
              DropdownMenuItem(
                value: 'Swift',
                child: Text(
                  "Swift",
                ),
              ),
            ],
            value: language,
            onChanged: (String? value) {
              setState(() {
                language = value;
              });
            },
            hint: const Text("Select languange"),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ExampleInputWidget extends StatefulWidget {
  const ExampleInputWidget({super.key});

  @override
  State<ExampleInputWidget> createState() => _ExampleInputWidgetState();
}

class _ExampleInputWidgetState extends State<ExampleInputWidget> {
  final TextEditingController _controller = TextEditingController();
  bool lightOn = false;

  String? language;

  bool agree = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$language selected'),
      duration: const Duration(seconds: 1),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TextField
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                hintText: 'Write your name here',
                labelText: 'Your name',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Text('Hello, ${_controller.text}'),
                    );
                  },
                );
              },
              child: const Text(
                "Submit",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Switch

            Switch(
              value: lightOn,
              onChanged: (bool value) {
                setState(() {
                  lightOn = value;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(lightOn ? 'Light On' : 'Light Off'),
                    duration: const Duration(
                      seconds: 1,
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 1,
            ),
            // Radio
            Column(
              children: [
                ListTile(
                  leading: Radio(
                    value: 'Dart',
                    groupValue: language,
                    onChanged: (String? value) {
                      setState(() {
                        language = value;
                        showSnackbar();
                      });
                    },
                  ),
                  title: const Text("Dart"),
                ),
                ListTile(
                  leading: Radio(
                    value: 'Kotlin',
                    groupValue: language,
                    onChanged: (String? value) {
                      setState(() {
                        language = value;
                        showSnackbar();
                      });
                    },
                  ),
                  title: const Text("Kotlin"),
                ),
                ListTile(
                  leading: Radio(
                    value: 'Swift',
                    groupValue: language,
                    onChanged: (String? value) {
                      setState(() {
                        language = value;
                        showSnackbar();
                      });
                    },
                  ),
                  title: const Text("Swift"),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 1,
            ),
            // Checkbox
            ListTile(
              leading: Checkbox(
                value: agree,
                onChanged: (value) {
                  setState(
                    () {
                      agree = value!;
                    },
                  );
                },
              ),
              title: const Text('Agree / Disagree'),
            )
          ],
        ),
      ),
    );
  }
}

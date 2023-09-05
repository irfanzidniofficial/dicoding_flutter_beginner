import 'package:flutter/material.dart';

class ExampleImage extends StatelessWidget {
  const ExampleImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://picsum.photos/200/300",
            width: 200,
            height: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset(
              "assets/images/img_flutter.png",
              width: 200,
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}

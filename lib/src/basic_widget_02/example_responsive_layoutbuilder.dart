import 'package:flutter/material.dart';

class ExampleResponsiveLayoutBuilder extends StatelessWidget {
  const ExampleResponsiveLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "MediaQuery: ${screenSize.width.toStringAsFixed(2)}",
                      ),
                      Text("LayoutBuilder: ${constraints.maxWidth}")
                    ],
                  );
                },
              ),
            ),
            Expanded(
                flex: 3,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Container(
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
                            style: const TextStyle(
                                color: Colors.blueGrey, fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'LayoutBuilder: ${constraints.maxWidth}',
                            style: const TextStyle(
                                color: Colors.blueGrey, fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}

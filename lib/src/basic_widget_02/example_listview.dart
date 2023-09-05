import 'package:flutter/material.dart';

class ExampleListView extends StatelessWidget {
  const ExampleListView({super.key});

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // => ListView

      // body: ListView(
      //   children: [
      //     Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(
      //           color: Colors.black,
      //         ),
      //       ),
      //       child: const Text(
      //         "1",
      //         style: TextStyle(
      //           fontSize: 50,
      //         ),
      //         textAlign: TextAlign.center,
      //       ),
      //     ),
      //     Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(
      //           color: Colors.black,
      //         ),
      //       ),
      //       child: const Text(
      //         "2",
      //         style: TextStyle(
      //           fontSize: 50,
      //         ),
      //         textAlign: TextAlign.center,
      //       ),
      //     ),
      //     Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(
      //           color: Colors.black,
      //         ),
      //       ),
      //       child: const Text(
      //         "3",
      //         style: TextStyle(
      //           fontSize: 50,
      //         ),
      //         textAlign: TextAlign.center,
      //       ),
      //     ),
      //     Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         color: Colors.grey,
      //         border: Border.all(
      //           color: Colors.black,
      //         ),
      //       ),
      //       child: const Text(
      //         "4",
      //         style: TextStyle(
      //           fontSize: 50,
      //         ),
      //         textAlign: TextAlign.center,
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 30,
      //     ),

      // ==> ListView Map

      //   body: ListView(
      //     children: numberList.map((number) {
      //       return Container(
      //         height: 250,
      //         decoration: BoxDecoration(
      //           color: Colors.green,
      //           border: Border.all(
      //             color: Colors.black,
      //           ),
      //         ),
      //         child: Center(
      //           child: Text(
      //             '$number',
      //             style: const TextStyle(
      //               fontSize: 50,
      //             ),
      //           ),
      //         ),
      //       );
      //     }).toList(),
      //   ),
      // );

      // => ListView Builder
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.amber,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

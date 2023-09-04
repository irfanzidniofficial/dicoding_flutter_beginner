import 'package:flutter/material.dart';

class CodelabsFirst extends StatelessWidget {
  const CodelabsFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: const Text(
              "Farm House Lembang",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 16,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.calendar_today,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Open Everyday")
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.access_time,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("09.00 - 20.00")
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.monetization_on,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Rp. 25.000")
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: const Text(
              "Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          )
        ],
      )),
    );
  }
}

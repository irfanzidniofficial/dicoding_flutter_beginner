import 'package:dicoding_flutter_beginner/src/basic_widget_02/example_navigation_firstscreen.dart';
import 'package:dicoding_flutter_beginner/src/basic_widget_02/example_responsive_layoutbuilder.dart';
import 'package:dicoding_flutter_beginner/src/basic_widget_02/example_responsive_mediaquery.dart';
import 'package:dicoding_flutter_beginner/src/basic_widget_02/example_responsive_page.dart';
import 'package:dicoding_flutter_beginner/src/codelabs/codelabs_fourth_main_page.dart';
import 'package:dicoding_flutter_beginner/src/codelabs/codelabs_third_detail_page.dart';
import 'package:dicoding_flutter_beginner/src/codelabs/codelabs_third_main_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CodelabsFourthMainPage(),
    );
  }
}

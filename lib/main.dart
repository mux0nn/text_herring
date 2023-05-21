import 'package:flutter/material.dart';
import 'package:text_herring/edit_page.dart';
import 'package:text_herring/speech_text.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Arial'),
      home: EditPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

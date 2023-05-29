import 'package:flutter/material.dart';
import 'package:text_herring/edit_page.dart';
import 'package:text_herring/speech_text.dart';
import 'package:text_herring/utils/user_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await UserPreferences.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Arial'),
      home: EditPage(id: 0),
      debugShowCheckedModeBanner: false,
    );
  }
}

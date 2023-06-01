import 'package:flutter/material.dart';
import 'package:text_herring/colors.dart';
import 'package:text_herring/utils/side_menu.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      endDrawer: SideMenu(),
    );
  }
}

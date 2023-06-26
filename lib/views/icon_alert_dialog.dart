import 'package:flutter/material.dart';

class IconAlertDialog extends StatefulWidget {
  final List items;
  const IconAlertDialog({super.key, required this.items});

  @override
  State<IconAlertDialog> createState() => _IconAlertDialogState();
}

class _IconAlertDialogState extends State<IconAlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.amber,
        child: Row(
          children: [],
        ),
      ),
    );
  }
}

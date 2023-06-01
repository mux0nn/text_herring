import 'package:flutter/material.dart';
import 'package:text_herring/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: primaryColor,
            ),
            child: Text(''),
          ),
          buildMenuItems(context),
        ],
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 16,
        children: [
          ListTile(
            leading: const Icon(Icons.favorite_border_outlined),
            title: const Text('Favorites'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favorites'),
            onTap: () {},
          ),
          ListTile(
            leading: CustomSwitch(),
            title: const Text('Dark theme'),
          ),
          CustomSwitch(),
        ],
      ),
    );
  }
}

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => CustomSwitchState();
}

class CustomSwitchState extends State<CustomSwitch> {
  bool light = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: light,
        activeColor: primaryColor,
        onChanged: (bool value) {
          setState(() {
            light = value;
          });
        });
  }
}

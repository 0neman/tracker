import 'package:flutter/material.dart';
import 'package:tracker/owners.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: const Text('Owners'),
            onTap: () =>
                Navigator.popAndPushNamed(context, OwnersScreen.routeName),
          ),
          const ListTile(
            title: Text('Place holder'),
          ),
          const ListTile(
            title: const Text('Place holder'),
          ),
          const ListTile(
            title: Text('Place holder'),
          ),
        ],
      ),
    );
  }
}

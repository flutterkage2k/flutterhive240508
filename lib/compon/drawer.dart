import 'package:flutter/material.dart';
import 'package:flutterhive240508/compon/drawer_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // header
          DrawerHeader(
            child: Icon(Icons.edit),
          ),
          const SizedBox(
            height: 25,
          ),

          DrawerTile(
            title: "Notes",
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.pop(context);
            },
          ),

          DrawerTile(
            title: "Settings",
            leading: Icon(Icons.settings),
            onTap: () {
              // Navigator.pop(context);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => SettingsPage(),
              //   ),
              // );
            },
          )
        ],
      ),
    );
  }
}

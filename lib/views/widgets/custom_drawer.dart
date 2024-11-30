import 'package:adaptive_and_responsive_ui/models/drawer_model.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDrawer extends StatelessWidget {
   CustomDrawer({super.key});
  final List<DrawerItemModel> item = [
    DrawerItemModel(title: 'D A S H B O A R D', icon: Icons.home),
    DrawerItemModel(title: 'S E T T I N G S', icon: Icons.settings),
    DrawerItemModel(title: 'A B O U T', icon: Icons.info),
    DrawerItemModel(title: 'L O G  O U T', icon: Icons.logout)
  ];
  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: Column(

        children: [
          DrawerHeader(
            
            child: Icon(
              FontAwesomeIcons.solidHeart,
              size: 48,
            ),
          ),
        ],
      ),
    );
  }
}

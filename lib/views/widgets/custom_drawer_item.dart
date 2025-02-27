import 'package:adaptive_and_responsive_ui/models/drawer_model.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Icon(drawerItemModel.icon),
      title: Text('drawerItemModel'),
    );
  }
}

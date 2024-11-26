import 'package:adaptive_and_responsive_ui/views/widgets/custom_item2.dart';
import 'package:flutter/material.dart';

class CustomSliversListView extends StatelessWidget {
  const CustomSliversListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8),
            child: const CustomItem2(),
          );
        });
  }
}


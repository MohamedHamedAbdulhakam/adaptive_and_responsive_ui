import 'package:adaptive_and_responsive_ui/views/widgets/custom_list_view.dart';
import 'package:adaptive_and_responsive_ui/views/widgets/custom_sliver_grid.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: const CustomScrollView(
        slivers: [
          CustomSliverGrid(),
        CustomSliversListView(),  
        ],
      ),
    );
  }
}

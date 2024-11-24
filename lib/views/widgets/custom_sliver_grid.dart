import 'package:adaptive_and_responsive_ui/views/widgets/sliver_item.dart';
import 'package:flutter/material.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 16,mainAxisSpacing: 16), itemBuilder: (context,index){
      return  SliverItem();
      

    },itemCount: 4,);
  }
}


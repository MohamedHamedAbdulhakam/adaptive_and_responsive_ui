import 'package:adaptive_and_responsive_ui/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffBDBDBD),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.menu,color: Colors.white,),

      ),
      body: HomeViewBody(),
    );
  }
}
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(
          child: Image.asset(
        "assets/Home 1/Frame 3826@4x.png",
        width: double.infinity,
      )),
    );
  }
}

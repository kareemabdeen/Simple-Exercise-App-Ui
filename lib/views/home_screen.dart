import 'package:excercise_app/widgets/bottom_navigation_bar.dart';
import 'package:excercise_app/widgets/homepage_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context)
        .size; // get the current screen heights and width and all thing about it
    return Scaffold(
      body: HomePageBody(screenSize: screenSize),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

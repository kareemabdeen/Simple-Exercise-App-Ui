import 'package:excercise_app/widgets/bottom_navigation_bar.dart';
import 'package:excercise_app/widgets/details_screen_body.dart';
import 'package:flutter/material.dart';

class DetailedScreen extends StatelessWidget {
  const DetailedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: DetailsScreenBody(screenSize: screenSize),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

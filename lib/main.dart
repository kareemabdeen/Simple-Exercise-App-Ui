import 'package:excercise_app/constants.dart';
import 'package:excercise_app/views/details_screen.dart';
import 'package:excercise_app/views/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        detailedYogaScreen: (context) => const DetailedScreen(),
      },
      theme: ThemeData(
        fontFamily: "Cairo",
        //Todo: search for material app attributes and how it affects
        scaffoldBackgroundColor: kBackgroundColor,

        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: const HomeScreen(),
    );
  }
}

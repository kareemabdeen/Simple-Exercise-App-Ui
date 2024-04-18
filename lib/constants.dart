import 'package:excercise_app/models/catogry_model.dart';
import 'package:flutter/material.dart';

const kBackgroundColor = Color(0xFFF8F8F8);
const kActiveIconColor = Color(0xFFE68342);
const kTextColor = Color(0xFF222B45);
const kBlueLightColor = Color(0xFFC7B8F5);
const kBlueColor = Color(0xFF817DC0);
const kShadowColor = Color(0xFFE6E6E6);
const detailedYogaScreen = "detailedscreen";
List<CatogryModel> catogryItemslList = [
  CatogryModel(
    imageUrl: "assets/icons/Hamburger.svg",
    catogoryName: "Deit \nRecommendation",
  ),
  CatogryModel(
    imageUrl: "assets/icons/Meditation.svg",
    catogoryName: "Meditation",
  ),
  CatogryModel(
    imageUrl: "assets/icons/yoga.svg",
    catogoryName: "Yoga",
  ),
  CatogryModel(
    imageUrl: "assets/icons/Excrecises.svg",
    catogoryName: "Kegel Excercises",
  ),
];

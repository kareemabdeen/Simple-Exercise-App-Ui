import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainerWithPhoto extends StatelessWidget {
  const CustomContainerWithPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        alignment: Alignment.center, // contolls its cild (image)
        height: 52,
        width: 52,
        decoration: const BoxDecoration(
          color: Color(0xffF5BDA6),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          "assets/icons/menu.svg",
        ),
      ),
    );
  }
}

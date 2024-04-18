import 'package:excercise_app/widgets/bottom_nav_item.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        //  horizontal: 5,
        vertical: 10,
      ),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(
            image: "assets/icons/calendar.svg",
            title: "Today",
            isActive: true,
            onPressed: () {},
          ),
          BottomNavItem(
            image: "assets/icons/gym.svg",
            title: "All Excercises",
            onPressed: () {},
            isActive: false,
          ),
          BottomNavItem(
            image: "assets/icons/Settings.svg",
            title: "Settings",
            onPressed: () {},
            isActive: false,
          ),
        ],
      ),
    );
  }
}

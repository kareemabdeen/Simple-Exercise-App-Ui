import 'package:excercise_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavItem extends StatefulWidget {
  BottomNavItem({
    super.key,
    required this.image,
    required this.title,
    required this.onPressed,
    this.isActive = false,
  });
  final String image, title;
  late bool isActive;
  final void Function() onPressed;

  @override
  State<BottomNavItem> createState() => _BottomNavItemState();
}

class _BottomNavItemState extends State<BottomNavItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.isActive = !widget.isActive;
        setState(() {});
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            widget.image,
            // ignore: deprecated_member_use
            color: widget.isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            widget.title,
            style: TextStyle(
              color: widget.isActive ? kActiveIconColor : kTextColor,
            ),
          ),
        ],
      ),
    );
  }
}

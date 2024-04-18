import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSerachBar extends StatelessWidget {
  const CustomSerachBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 30,
      ),
      padding: const EdgeInsets.only(left: 28),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusDirectional.all(Radius.circular(30))),
      child: TextField(
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus
              ?.unfocus(); // in order if the user click outside the tetfield it will close the keyboard of phone
        },
        decoration: InputDecoration(
          //  contentPadding: const EdgeInsets.only(left: ),
          hintText: "search",
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

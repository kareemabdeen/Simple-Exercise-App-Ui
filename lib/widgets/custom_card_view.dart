import 'package:excercise_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CatogoryCardItem extends StatelessWidget {
  const CatogoryCardItem({
    super.key,
    required this.imageurl,
    required this.catogoryName,
    required this.onPressed,
  });
  final String imageurl;
  final String catogoryName;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
              color: kShadowColor,
              spreadRadius: -23,
              blurRadius: 17,
              offset: Offset(0, 17),
            )
          ],
          color: Colors.white,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset(
                    imageurl,
                  ),
                  const Spacer(),
                  Text(
                    catogoryName,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:excercise_app/constants.dart';
import 'package:excercise_app/widgets/custom_textfield.dart';
import 'package:excercise_app/widgets/list_of_sessionitems.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsScreenBody extends StatelessWidget {
  const DetailsScreenBody({
    super.key,
    required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenSize.height * 0.45,
          decoration: const BoxDecoration(
            color: kBlueLightColor,
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage("assets/images/meditation_bg.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenSize.height * 0.05,
                ),
                Text(
                  "Meditation",
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "3-10 Min Course",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: screenSize.width * .6,
                  child: const Text(
                      "Live happier and healthier by learning the fundamentals of meditation and mindfulness"),
                ),
                SizedBox(
                  width: screenSize.width * 0.5,
                  child: const CustomSerachBar(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const BuildListOfSessionItems(),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Meditation",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomListTile()
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      margin: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 25,
              color: kShadowColor,
              spreadRadius: -13,
            ),
          ]),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            "assets/icons/Meditation_women_small.svg",
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: SvgPicture.asset(
              "assets/icons/Lock.svg",
            ),
          ),
          title: Text(
            "Basics 2",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          subtitle: const Text("Start your deepen you practice"),
        ),
      ),
    );
  }
}

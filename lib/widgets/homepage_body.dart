import 'package:excercise_app/widgets/custom_icon_container.dart';
import 'package:excercise_app/widgets/custom_textfield.dart';
import 'package:excercise_app/widgets/show_catogory_list.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
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
            color: Color(0xffF2C8B1),
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomContainerWithPhoto(),
                Text(
                  'Good Morning \nkareem',
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                ),
                const CustomSerachBar(),
                const ShowCatogoryItemsGridView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

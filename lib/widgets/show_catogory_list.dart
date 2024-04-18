import 'package:excercise_app/constants.dart';
import 'package:excercise_app/widgets/custom_card_view.dart';
import 'package:flutter/material.dart';

class ShowCatogoryItemsGridView extends StatelessWidget {
  const ShowCatogoryItemsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        crossAxisCount: 2,
        shrinkWrap: true, //todo:fix
        childAspectRatio: 0.85,
        children: [
          ...List.generate(
            catogryItemslList.length,
            (index) => CatogoryCardItem(
              onPressed: () {
                if (index == 1) {
                  Navigator.pushNamed(context, detailedYogaScreen);
                }
              },
              imageurl: catogryItemslList[index].imageUrl,
              catogoryName: catogryItemslList[index].catogoryName,
            ),
          ),
        ],
      ),
    );
  }
}

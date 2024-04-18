import 'package:excercise_app/widgets/session_item.dart';
import 'package:flutter/material.dart';

class BuildListOfSessionItems extends StatelessWidget {
  const BuildListOfSessionItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // as coulmn and row , but if it has enough space it move any where depend on direction of it (row/coulmn) to implement itself
      runSpacing: 20,
      spacing: 20,
      children: [
        SeassionCard(
          seassionNum: "01",
          isActive: true,
          onPressed: () {},
        ),
        SeassionCard(
          seassionNum: "02",
          isActive: true,
          onPressed: () {},
        ),
        SeassionCard(
          seassionNum: "03",
          isActive: true,
          onPressed: () {},
        ),
        SeassionCard(
          seassionNum: "04",
          isActive: true,
          onPressed: () {},
        ),
        SeassionCard(
          seassionNum: "05",
          isActive: true,
          onPressed: () {},
        ),
        SeassionCard(
          seassionNum: "06",
          isActive: true,
          onPressed: () {},
        ),
      ],
    );
  }
}

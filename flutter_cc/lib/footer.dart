import 'package:flutter/material.dart';
import 'choice_item.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      children: [
        GestureDetector(
          onTap: () {},
          child: const ChoiceItem(isSelected: false, item: "Poisson"),
        ),
        const ChoiceItem(isSelected: false, item: "tarte"),
        const ChoiceItem(isSelected: true, item: "cat"),
        const ChoiceItem(isSelected: false, item: "test"),
        const ChoiceItem(isSelected: false, item: "cart"),
        const ChoiceItem(isSelected: false, item: "legume"),
        const ChoiceItem(isSelected: false, item: "casque"),
        const ChoiceItem(isSelected: false, item: "izzac"),
        const ChoiceItem(isSelected: false, item: "iphoin"),
        const ChoiceItem(isSelected: false, item: "remy"),
      ],
    );
  }
}

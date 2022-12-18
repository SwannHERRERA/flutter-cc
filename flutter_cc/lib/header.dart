import 'package:flutter/material.dart';

import 'choice_item.dart';

class Header extends StatelessWidget {
  final List<ChoiceItem> items;
  const Header({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.green,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Vos Choix: ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Wrap(
            alignment: WrapAlignment.start,
            children: items.where((item) => item.isSelected).map((e) {
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: ChoiceItemWidget(item: e),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

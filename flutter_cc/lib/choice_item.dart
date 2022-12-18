import 'package:flutter/material.dart';

class ChoiceItem {
  final bool isSelected;
  final String name;
  const ChoiceItem({
    required this.isSelected,
    required this.name,
  });
}

class ChoiceItemWidget extends StatelessWidget {
  final ChoiceItem item;
  const ChoiceItemWidget({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: item.isSelected ? Colors.orangeAccent : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: item.isSelected ? Colors.orangeAccent : Colors.grey,
        ),
      ),
      child: Text(
        item.name,
        style: TextStyle(
          color: item.isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

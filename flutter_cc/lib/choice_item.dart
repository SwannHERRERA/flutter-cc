import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  final bool isSelected;
  final String item;
  const ChoiceItem({
    super.key,
    required this.isSelected,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: isSelected ? Colors.yellowAccent : Colors.grey,
      label: Text(item),
    );
  }
}

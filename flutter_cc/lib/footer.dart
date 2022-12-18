import 'package:flutter/material.dart';
import 'choice_item.dart';

class Footer extends StatelessWidget {
  final void Function(int) onTap;
  final List<ChoiceItem> items;
  const Footer({super.key, required this.onTap, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Wrap(
        alignment: WrapAlignment.start,
        children: items
            .map(
              (item) => Padding(
                padding: const EdgeInsets.all(3.0),
                child: GestureDetector(
                  onTap: () => onTap(items.indexOf(item)),
                  child: ChoiceItemWidget(item: item),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'choice_item.dart';
import 'footer.dart';
import 'header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ChoiceItem> items = [
    const ChoiceItem(isSelected: true, name: "Miel"),
    const ChoiceItem(isSelected: false, name: "Jus de pomme"),
    const ChoiceItem(isSelected: true, name: "Chocolate"),
    const ChoiceItem(isSelected: true, name: "Coffee"),
    const ChoiceItem(isSelected: false, name: "Granolas"),
  ];

  void toggleSelected(int index) {
    final newItem = ChoiceItem(
      isSelected: !items[index].isSelected,
      name: items[index].name,
    );
    setState(() {
      items[index] = newItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Header(items: items),
            ),
            Expanded(
              flex: 1,
              child: Footer(items: items, onTap: toggleSelected),
            ),
          ],
        ),
      ),
    );
  }
}

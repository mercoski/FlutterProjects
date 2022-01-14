import 'package:flutter/material.dart';

import 'item.dart';

class ItemData with ChangeNotifier {
  final List<Item> items = [
    Item(title: 'Peynir Al'),
    Item(title: 'Çöpü Al'),
    Item(title: 'Flutter Çalış'),
    Item(title: 'Kafa Dağıt')
  ];

  void toggleStatus(int index) {
    items[index].toggleStatus();
    notifyListeners();
  }

  void addItem(String text) {
    items.add(Item(title: text));
    notifyListeners();
  }

  void removeItem(int index) {
    items.removeAt(index);
    notifyListeners();
  }
}

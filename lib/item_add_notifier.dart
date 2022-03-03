import 'package:flutter/material.dart';
import 'item.dart';

class ItemAddNotifier extends ChangeNotifier {
  //
  List<Item> itemList = [];
  addItem(String itemName) async {
    Item item = Item(itemName: itemName);
    itemList.add(item);
    notifyListeners();
  }
}
import 'package:flutter/cupertino.dart';

class RemindersScreenViewModel extends ChangeNotifier {
  Widget listItems;
  RemindersScreenViewModel({required this.listItems}) {
    updateItems(listItems);
  }
  List<Widget> _items = [];
  List<Widget> get items => _items;

  void updateItems(Widget listItems) {
    for (int i = 0; i <= 10; i++) {
      _items.add(listItems);
    }
  }
}

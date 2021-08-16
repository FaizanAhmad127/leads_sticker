import 'package:flutter/cupertino.dart';

class DialingScreenViewModel extends ChangeNotifier {
  Widget listItems;
  DialingScreenViewModel({required this.listItems}) {
    updateItems(listItems);
  }
  List<Widget> _items = [];
  List<Widget> get items => _items;

  void updateItems(Widget listItems) {
    for (int i = 0; i <= 1; i++) {
      _items.add(listItems);
    }
  }
}

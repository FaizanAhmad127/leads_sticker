import 'package:flutter/cupertino.dart';

class ContactScreenViewModel extends ChangeNotifier {
  Widget listItems;
  ContactScreenViewModel({required this.listItems}) {
    updateItems(listItems);
  }
  List<Widget> _items = [];
  List<Widget> get items => _items;

  void updateItems(Widget listItems) {
    for (int i = 0; i <= 10; i++) {
      _items.add(listItems);
    }
    // notifyListeners();
  }
}

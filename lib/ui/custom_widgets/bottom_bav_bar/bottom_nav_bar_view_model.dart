import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarViewModel extends ChangeNotifier {
  int _itemIndex = 0;
  static Color _lightWhite = Colors.white54;
  static Color _brightWhite = Colors.white;
  Color _item1Color = _brightWhite;
  Color _item2Color = _lightWhite;
  Color _item3Color = _lightWhite;

  Color get item1Color => _item1Color;
  Color get item2Color => _item2Color;
  Color get item3Color => _item3Color;
  int get itemIndex => _itemIndex;

  set getItemColor(int index) {
    if (index == 0) {
      _itemIndex = 0;
      _item1Color = _brightWhite;
      _item2Color = _lightWhite;
      _item3Color = _lightWhite;
      notifyListeners();
    } else if (index == 1) {
      _itemIndex = 1;
      _item1Color = _lightWhite;
      _item2Color = _brightWhite;
      _item3Color = _lightWhite;
      notifyListeners();
    } else if (index == 2) {
      _itemIndex = 2;
      _item1Color = _lightWhite;
      _item2Color = _lightWhite;
      _item3Color = _brightWhite;
      notifyListeners();
    }
  }
}

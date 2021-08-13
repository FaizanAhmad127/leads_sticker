import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leads_sticker/core/constants/colors.dart';

class OnBoardingScreenViewModel extends ChangeNotifier {
  Color _backgroundColor = Colors.white;
  Color _textColor = Colors.black;
  Color _dotColor = kBlueColor;

  set index(int index) {
    if (index == 0) {
      _backgroundColor = Colors.white;
      _textColor = Colors.black;
      _dotColor = kBlueColor;
      notifyListeners();
    } else if (index == 1) {
      _backgroundColor = kBlueColor;
      _textColor = Colors.white;
      _dotColor = Colors.white;
      notifyListeners();
    } else if (index == 2) {
      _backgroundColor = Colors.white;
      _textColor = Colors.black;
      _dotColor = kBlueColor;
      notifyListeners();
    }
  }

  Color get backgroundColor => _backgroundColor;
  Color get textColor => _textColor;
  Color get dotColor => _dotColor;
}

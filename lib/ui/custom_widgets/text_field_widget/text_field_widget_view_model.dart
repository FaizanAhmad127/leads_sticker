import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidgetViewModel extends ChangeNotifier {
  Color _labelTextColor = Colors.black;
  FocusNode _focusNode = FocusNode();

  TextFieldWidgetViewModel() {
    attachFocusNode();
  }
  Color get labelTextColor => _labelTextColor;
  FocusNode get focusNode => _focusNode;

  // set labelTextColor(Color a) {
  //   _labelTextColor = a;
  //   notifyListeners();
  // }

  void attachFocusNode() {
    _focusNode.addListener(() {
      print("focusNode add listenerAttached");
      if (_focusNode.hasFocus) {
        _labelTextColor = Colors.blue;
        notifyListeners();
      } else {
        _labelTextColor = Colors.black;
        notifyListeners();
      }
    });
  }
}

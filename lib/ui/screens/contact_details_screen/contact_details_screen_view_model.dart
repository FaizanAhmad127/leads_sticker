import 'package:flutter/cupertino.dart';

class ContactDetailsScreenViewModel extends ChangeNotifier {
  bool _showAdvanceDropDown = false;
  bool _isAdvancedArrowPressed = false;
  bool _showAutomationDropDown = false;
  bool _isAutomationArrowPressed = false;

  bool get showAdvanceDropDown => _showAdvanceDropDown;
  bool get showAutomationDropDown => _showAutomationDropDown;
  bool get isAdvanceArrowPressed => _isAdvancedArrowPressed;
  bool get isAutomationArrowPressed => _isAutomationArrowPressed;
  void isAdvanceDropDownClicked() {
    if (_showAdvanceDropDown == true) {
      _showAdvanceDropDown = false;
      _isAdvancedArrowPressed = false;
      notifyListeners();
    } else {
      _showAdvanceDropDown = true;
      _isAdvancedArrowPressed = true;
      notifyListeners();
    }
  }

  void isAutomationDropDownClicked() {
    if (_showAutomationDropDown == true) {
      _showAutomationDropDown = false;
      _isAutomationArrowPressed = false;
      notifyListeners();
    } else {
      _showAutomationDropDown = true;
      _isAutomationArrowPressed = true;
      notifyListeners();
    }
  }
}

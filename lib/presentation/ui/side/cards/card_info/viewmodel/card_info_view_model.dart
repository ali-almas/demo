import 'package:flutter/cupertino.dart';

enum CardInfoPageState { addCard, payment }

class CardInfoViewModel extends ChangeNotifier {
  bool _checkBoxValue = false;

  bool get checkBoxValue => _checkBoxValue;

  changeCheckBoxState(bool value) {
    _checkBoxValue = value;

    notifyListeners();
  }
}

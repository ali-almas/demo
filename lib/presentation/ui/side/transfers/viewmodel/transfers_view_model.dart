import 'package:flutter/material.dart';

enum CardState { clicked, unClicked }

enum PageState { ownCard, anotherCard }

class TransfersViewModel extends ChangeNotifier {
  CardState _state = CardState.unClicked;
  PageState _pageState = PageState.ownCard;
  bool _checkBoxValue = false;

  CardState get state => _state;
  PageState get pageState => _pageState;
  bool get checkBoxValue => _checkBoxValue;

  changeCardState(CardState cardState) {
    _state = cardState;
    notifyListeners();
  }

  changeCheckBoxState(bool value) {
    _checkBoxValue = value;

    notifyListeners();
  }

  changePageState(PageState state) {
    _pageState = state;
    notifyListeners();
  }
}

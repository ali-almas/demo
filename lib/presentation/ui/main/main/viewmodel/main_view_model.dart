import 'package:flutter/material.dart';

enum EntranceState { registered, unregistered }

class MainViewModel extends ChangeNotifier {
  int _tabIndex = 0;

  int get tabIndex => _tabIndex;

  changeTab(int index) {
    _tabIndex = index;
    notifyListeners();
  }
}

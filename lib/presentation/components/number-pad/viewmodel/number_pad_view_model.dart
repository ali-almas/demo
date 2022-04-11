import 'package:flutter/material.dart';

import '../model/number_pad_char_item.dart';

enum NumberPadStyle { standard, questioned }

class NumberPadViewModel extends ChangeNotifier {
  NumberPadViewModel({NumberPadStyle style = NumberPadStyle.standard}) {
    configure(style);
  }

  final List<List<CharItem>> _numberPadCharacters = [
    [CharItem(Char.one), CharItem(Char.two), CharItem(Char.three)],
    [CharItem(Char.four), CharItem(Char.five), CharItem(Char.six)],
    [CharItem(Char.seven), CharItem(Char.eight), CharItem(Char.nine)],
    [CharItem(Char.empty), CharItem(Char.zero), CharItem(Char.clear)],
  ];

  List<List<CharItem>> get numberPadCharacters => _numberPadCharacters;

  configure(NumberPadStyle style) {
    if (style == NumberPadStyle.questioned) {
      final lastRow = _numberPadCharacters.last;
      final index = lastRow.indexWhere((element) => element.char == Char.empty);
      _numberPadCharacters[_numberPadCharacters.length - 1][index] = CharItem(Char.question);
      notifyListeners();
    }
  }
}

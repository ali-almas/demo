import '../../../delegate/visible.dart';

enum Char { zero, one, two, three, four, five, six, seven, eight, nine, empty, question, clear }

class CharItem implements Visible {
  @override
  bool get isVisible => char != Char.empty;

  double get opacity => isVisible ? 1 : 0;

  final Char char;

  CharItem(this.char);

  String get value {
    switch (char) {
      case Char.zero:
        return "0";
      case Char.one:
        return "1";
      case Char.two:
        return "2";
      case Char.three:
        return "3";
      case Char.four:
        return "4";
      case Char.five:
        return "5";
      case Char.six:
        return "6";
      case Char.seven:
        return "7";
      case Char.eight:
        return "8";
      case Char.nine:
        return "9";
      case Char.empty:
        return "";
      case Char.question:
        return "?";
      case Char.clear:
        return "x";
    }
  }
}

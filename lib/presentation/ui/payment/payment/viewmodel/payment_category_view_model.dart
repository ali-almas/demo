import 'package:flutter/cupertino.dart';

enum PaymentSortType { list, grid }

class PaymentCategoryViewModel extends ChangeNotifier {
  PaymentSortType _sortType = PaymentSortType.grid;

  PaymentSortType get sortType => _sortType;

  sort(PaymentSortType sortTypeValue) {
    _sortType = sortTypeValue;
    notifyListeners();
  }
}

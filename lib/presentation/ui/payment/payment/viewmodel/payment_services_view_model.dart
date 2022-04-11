import 'package:demo/presentation/ui/payment/payment/viewmodel/payment_category_view_model.dart';
import 'package:flutter/cupertino.dart';

enum BackButtonVisibility { visible, invisible }

class PaymentServicesViewModel extends ChangeNotifier {
  PaymentSortType _sortType = PaymentSortType.grid;

  PaymentSortType get sortType => _sortType;

  sort(PaymentSortType sortTypeValue) {
    _sortType = sortTypeValue;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

import '../../../../delegate/title_value.dart';
import '../../../../utils/l10n.dart';
import '../model/payment_result_item_model.dart';

enum PaymentResult { successful, failed }

class PaymentResultViewModel extends ChangeNotifier {
  final List<TitleValue> _items = [
    PaymentResultItem(L10n.serviceType, "Azercell"),
    PaymentResultItem(L10n.mobile, "0501231212"),
    PaymentResultItem(L10n.price, "2.35 AZN"),
    PaymentResultItem(L10n.cardNumber, "XXXX XXXX 1234 4321"),
  ];

  List<TitleValue> get items => _items;
}

import 'package:flutter/cupertino.dart';

import '../../../../delegate/title_value.dart';
import '../../../../utils/l10n.dart';
import '../model/confirm_transaction_item.dart';

class ConfirmTransactionViewModel extends ChangeNotifier {
  final List<TitleValue> _items = [
    ConfirmTransactionItem(L10n.serviceType, "Test"),
    ConfirmTransactionItem(L10n.mobile, "313123213213"),
    ConfirmTransactionItem(L10n.price, "2.35 AZN"),
    ConfirmTransactionItem(L10n.cardNumber, "XXXX XXXX XXXX XXXX"),
  ];

  List<TitleValue> get items => _items;
}

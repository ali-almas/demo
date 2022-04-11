import '../../../../delegate/title_value.dart';

class ConfirmTransactionItem implements TitleValue {
  @override
  final String title;

  @override
  final String value;

  ConfirmTransactionItem(this.title, this.value);
}

import '../../../../delegate/title_value.dart';

class PaymentResultItem implements TitleValue {
  @override
  final String title;

  @override
  final String value;

  PaymentResultItem(this.title, this.value);
}

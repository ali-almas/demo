class PaymentProviderModel {
  PaymentProviderModel({
    required this.paymentProviderList,
  });

  List<PaymentProviderList> paymentProviderList;

  factory PaymentProviderModel.fromJson(Map<String, dynamic> json) => PaymentProviderModel(
    paymentProviderList:List<PaymentProviderList>.from(json["paymentProviderList"].map((x) => PaymentProviderList.fromJson(x))),
  );

}

class PaymentProviderList {
  PaymentProviderList({
    required this.icon,
    required this.name,
  });

  String icon;
  String name;

  factory PaymentProviderList.fromJson(Map<String, dynamic> json) => PaymentProviderList(
    icon: json["icon"],
    name: json["name"],
  );

}

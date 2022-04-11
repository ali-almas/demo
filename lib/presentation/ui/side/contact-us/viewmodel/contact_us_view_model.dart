import 'package:flutter/material.dart';

import '../model/contact_us_item.dart';

class ContactUsViewModel extends ChangeNotifier {
  final List<ContactUsItem> _items = [
    ContactUsItem(title: "Telefon nömrəsi", subtitle: "+994771231213"),
    ContactUsItem(title: "Email", subtitle: "paypark@gmail.com"),
    ContactUsItem(title: "Whatsapp", subtitle: 'assets/svg/wp.svg', type: ContactUsSubtitleType.image),
    ContactUsItem(title: "Instagram", subtitle: "assets/svg/instagram.svg", type: ContactUsSubtitleType.image),
  ];

  List<ContactUsItem> get items => _items;
}

import 'package:flutter/foundation.dart';

import '../model/language_item.dart';

class LanguageViewModel extends ChangeNotifier {
  LanguageViewModel(String languageCode) {
    configure(languageCode);
  }

  final List<LanguageItem> _languages = [
    LanguageItem(language: AvailableLanguage.azerbaijani),
    LanguageItem(language: AvailableLanguage.english),
    LanguageItem(language: AvailableLanguage.russian),
  ];

  List<LanguageItem> get languages => _languages;

  configure(String languageCode) {
    final deviceLanguage = _languages.firstWhere((language) {
      return language.languageCode.toLowerCase() == languageCode.toLowerCase();
    });

    select(deviceLanguage);
  }

  select(LanguageItem language) {
    for (int i = 0; i < _languages.length; i++) {
      _languages[i].isSelected = _languages[i] == language;
    }

    notifyListeners();
  }
}

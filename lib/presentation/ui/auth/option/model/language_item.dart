import '../../../../delegate/selectable.dart';

enum AvailableLanguage { azerbaijani, english, russian }

class LanguageItem implements Selectable {
  @override
  bool isSelected;

  final AvailableLanguage language;

  LanguageItem({
    required this.language,
    this.isSelected = false,
  });

  String get languageCode {
    if (language == AvailableLanguage.english) {
      return "EN";
    } else if (language == AvailableLanguage.russian) {
      return "RU";
    }
    return "AZ";
  }
}

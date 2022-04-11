import 'package:flutter/foundation.dart';

import '../../../../../data/service/preferences/preference.dart';
import '../../../../utils/l10n.dart';
import '../model/onboarding_item.dart';

class OnboardingViewModel extends ChangeNotifier {
  final List<OnboardingItem> _items = [
    OnboardingItem(photoUrl: "assets/svg/onboard-1.svg", title: L10n.onBoardingFirstItem, isSelected: true),
    OnboardingItem(photoUrl: "assets/svg/onboard-2.svg", title: L10n.onBoardingSecondItem),
    OnboardingItem(photoUrl: "assets/svg/onboard-3.svg", title: L10n.onBoardingThirdItem),
  ];

  List<OnboardingItem> get items => _items;
  int get currentIndex => items.indexWhere((element) => element.isSelected);
  bool get isLastItem => currentIndex == _items.length - 1;

  next() {
    var index = (currentIndex < _items.length - 1) ? currentIndex + 1 : 0;
    select(index);

    notifyListeners();
  }

  select(int index) {
    for (int i = 0; i < items.length; i++) {
      _items[i].isSelected = i == index;
    }

    notifyListeners();
  }

  skip() async {
    final prefs = await PreferencesService.instance;
    prefs.setOnBoardingPassed(true);
    return true;
  }
}

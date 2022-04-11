import '../../../../delegate/pageable.dart';

class OnboardingItem extends Pageable {
  @override
  bool isSelected;

  OnboardingItem({
    required String photoUrl,
    required String title,
    this.isSelected = false,
  }) : super(title: title, imagePath: photoUrl);
}

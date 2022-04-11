import 'package:flutter/material.dart';

import '../../base/base_button.dart';
import '../../delegate/selectable.dart';
import '../../shared/ui_color.dart';
import '../../shared/ui_text_style.dart';

class CircleButton extends BaseButton implements Selectable {
  @override
  final bool isSelected;

  const CircleButton({
    Key? key,
    required String title,
    VoidCallback? onTap,
    String? heroTag,
    double height = 50,
    this.isSelected = false,
  }) : super(key: key, title: title, onTap: onTap, heroTag: heroTag, height: height);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        width: height,
        child: FloatingActionButton(
          heroTag: heroTag ?? UniqueKey(),
          onPressed: onTap,
          backgroundColor: isSelected ? UIColor.green : UIColor.black.withOpacity(0.05),
          child: Text(
            title,
            style: UITextStyle.headline2(
              color: isSelected ? UIColor.white : UIColor.black,
            ),
          ),
        ),
      ),
    );
  }
}

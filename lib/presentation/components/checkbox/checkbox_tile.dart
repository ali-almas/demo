import 'package:flutter/material.dart';

import '../../shared/ui_color.dart';
import '../../shared/ui_text_style.dart';

class CheckBoxTile extends StatelessWidget {
  final ValueChanged didTap;
  final String text;
  final bool value;
  const CheckBoxTile({
    Key? key,
    required this.text,
    required this.didTap,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: UIColor.green,
      title: Text(
        text,
        style: UITextStyle.headline2(
          fontWeight: FontWeight.w400,
          color: UIColor.black.withOpacity(0.8),
        ),
      ),
      value: value,
      onChanged: didTap,
    );
  }
}

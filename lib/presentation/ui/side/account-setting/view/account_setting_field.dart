import 'package:flutter/cupertino.dart';

import '../../../../components/field/primary/primary_text_field.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';

class AccountSettingField extends StatelessWidget {
  final String headText;
  final IconData? suffixIcon;

  const AccountSettingField({
    Key? key,
    required this.headText,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headText,
          style: UITextStyle.headline2(fontWeight: FontWeight.w400),
        ),
        const SizedBox(height: 8),
        PrimaryTextField(
          color: UIColor.green,
          suffixIcon: suffixIcon ?? CupertinoIcons.pen,
          onTapSuffix: () {},
          suffixIconColor: UIColor.green,
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';

class AccountSettingEdit extends StatelessWidget {
  final VoidCallback? onTap;
  final String editText;

  const AccountSettingEdit({Key? key, required this.editText, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 56,
        child: Row(
          children: [
            Text(
              editText,
              style: UITextStyle.headline2(
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(width: 16),
            const Icon(
              CupertinoIcons.pencil,
              color: UIColor.green,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../delegate/title_value.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';

class ConfirmTransactionListTile extends StatelessWidget {
  final TitleValue titleValue;
  final TextAlign textAlign;

  const ConfirmTransactionListTile({
    Key? key,
    required this.titleValue,
    this.textAlign = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Text(
          titleValue.title,
          style: UITextStyle.headline3(
            color: UIColor.black.withOpacity(0.3),
          ),
          textAlign: textAlign,
        ),
      ),
      subtitle: Text(
        titleValue.value,
        style: UITextStyle.headline2(
          color: UIColor.green,
        ),
        textAlign: textAlign,
      ),
    );
  }
}

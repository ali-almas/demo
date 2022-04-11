import 'package:flutter/material.dart';

import '../../components/button/secondary_button.dart';
import '../../components/dialog/date_picker.dart';
import '../../shared/ui_text_style.dart';
import '../../utils/l10n.dart';

class HistoryCalendar extends StatelessWidget {
  const HistoryCalendar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: SecondaryButton(
            height: 48,
            heroTag: UniqueKey().toString(),
            textStyle: UITextStyle.headline3(),
            onTap: () async {
              await DatePicker.show(context);
            },
            title: L10n.fromHistory,
            prefixIcon: const Icon(
              Icons.calendar_today_outlined,
              size: 16,
            ),
          ),
        ),
        const SizedBox(width: 32),
        Expanded(
          child: SecondaryButton(
            height: 48,
            heroTag: UniqueKey().toString(),
            textStyle: UITextStyle.headline3(),
            onTap: () async {
              await DatePicker.show(context);
            },
            title: L10n.toHistory,
            prefixIcon: const Icon(
              Icons.calendar_today_outlined,
              size: 16,
            ),
          ),
        ),
      ],
    );
  }
}

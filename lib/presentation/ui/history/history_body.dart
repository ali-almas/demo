import 'package:flutter/material.dart';

import '../../shared/ui_color.dart';
import '../../shared/ui_text_style.dart';
import '../../utils/l10n.dart';
import 'history_calendar.dart';
import 'history_list.dart';

class HistoryBody extends StatelessWidget {
  const HistoryBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 8),
            Text(
              L10n.history,
              style: UITextStyle.headline2(
                color: UIColor.black.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 24),
            const HistoryCalendar(),
            const SizedBox(height: 24),
            const Expanded(child: HistoryList())
          ],
        ),
      ),
    );
  }
}

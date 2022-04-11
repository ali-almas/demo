import 'package:flutter/material.dart';

import '../../../../components/button/primary_button.dart';
import '../../../../components/button/secondary_button.dart';
import '../../../../components/dialog/primary_bottom_sheet.dart';
import 'notification_list_item.dart';

class NotificationsList extends StatelessWidget {
  const NotificationsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 16,
      itemBuilder: ((context, index) {
        return NotificationListItem(
          didTapDots: () async {
            await PrimaryBottomSheet.show(
              context,
              buttons: [
                PrimaryButton(
                  title: "Oxunmuş olaraq işarələ",
                  onTap: () {},
                ),
                SecondaryButton(
                  title: "Bildirişi sil",
                  onTap: () {},
                ),
              ],
            );
          },
          didTapNotification: () {},
        );
      }),
    );
  }
}

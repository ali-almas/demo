import 'package:flutter/material.dart';

import '../../../../components/button/primary_button.dart';
import '../../../../components/button/secondary_button.dart';
import '../../../../components/dialog/primary_bottom_sheet.dart';
import '../../../../shared/ui_color.dart';

class NotificationsRightIcons extends StatelessWidget {
  const NotificationsRightIcons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          color: UIColor.green,
          onPressed: () async {
            await PrimaryBottomSheet.show(
              context,
              text: "Bütün bildirişləri oxunmuş olaraq işarələmək istədiyindən əminsən?",
              buttons: [
                PrimaryButton(
                  title: "Bəli",
                  onTap: () {},
                ),
                SecondaryButton(
                  title: "Xeyr",
                  onTap: () {},
                ),
              ],
            );
          },
          icon: const Icon(Icons.done_all),
        ),
        IconButton(
          color: UIColor.green,
          onPressed: () async {
            await PrimaryBottomSheet.show(
              context,
              text: "Bütün bildirişləri silmək istədiyindən əminsən?",
              buttons: [
                PrimaryButton(
                  title: "Bəli",
                  onTap: () {},
                ),
                SecondaryButton(
                  title: "Xeyr",
                  onTap: () {},
                ),
              ],
            );
          },
          icon: const Icon(Icons.delete),
        ),
      ],
    );
  }
}

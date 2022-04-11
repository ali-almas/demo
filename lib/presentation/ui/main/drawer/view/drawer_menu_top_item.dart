import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../route/navigation.dart';
import '../../../../route/route_name.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';

class DrawerMenuTopItem extends StatelessWidget {
  const DrawerMenuTopItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.clear),
          ),
        ),
        const SizedBox(height: 20),
        ListTile(
          onTap: () => Navigation.push(RouteName.accountSettingPage),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
          leading: CircleAvatar(
            backgroundColor: UIColor.green.withOpacity(0.07),
            child: SvgPicture.asset("assets/svg/profile.svg", width: 22, height: 22),
          ),
          title: Text("0771231213", style: UITextStyle.headline2(fontWeight: FontWeight.w400)),
          trailing: Icon(
            Icons.settings_outlined,
            color: UIColor.black.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}

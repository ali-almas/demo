import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../components/button/secondary_button.dart';
import '../../../../components/field/pin/pin_field.dart';
import '../../../../components/number-pad/view/number_pad.dart';
import '../../../../components/number-pad/viewmodel/number_pad_view_model.dart';
import '../../../../route/navigation.dart';
import '../../../../route/route_name.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';
import '../../../main/main/viewmodel/main_view_model.dart';

class PinSettingBody extends StatelessWidget {
  const PinSettingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            CircleAvatar(
              radius: 42,
              backgroundColor: UIColor.green.withOpacity(0.07),
              child: SvgPicture.asset("assets/svg/profile.svg"),
            ),
            const SizedBox(height: 32),
            const PinField(),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SecondaryButton(
                  title: L10n.forgotPassword,
                  hasBorder: false,
                  heroTag: UniqueKey().toString(),
                  onTap: () {},
                  textColor: UIColor.black,
                  textStyle: UITextStyle.headline3(),
                ),
              ),
            ),
            Expanded(
              child: NumberPad(
                style: NumberPadStyle.questioned,
                onTapNumber: (value) => Navigation.push(
                  RouteName.mainPage,
                  arguments: EntranceState.registered,
                ),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  const Icon(Icons.fingerprint),
                  const SizedBox(height: 20),
                  Text(L10n.biometric),
                ],
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

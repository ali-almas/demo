import 'package:flutter/material.dart';

import '../../../../components/button/primary_button.dart';
import '../../../../components/button/secondary_button.dart';
import '../../../../route/navigation.dart';
import '../../../../route/route_name.dart';
import '../../../../utils/l10n.dart';

class BiometricOptionsBody extends StatelessWidget {
  const BiometricOptionsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            PrimaryButton(
              title: L10n.addBiometric,
              onTap: () {},
            ),
            const SizedBox(height: 16),
            SecondaryButton(
              title: L10n.setPin,
              onTap: () => Navigation.push(RouteName.pinSettingPage),
            ),
            const Spacer(),
            SecondaryButton(
              hasBorder: false,
              heroTag: UniqueKey().toString(),
              title: L10n.later,
              onTap: () {},
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

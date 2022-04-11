import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/ui_color.dart';
import '../../utils/l10n.dart';
import '../field/primary/primary_text_field.dart';

class CardField extends StatelessWidget {
  const CardField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.zero,
          color: UIColor.black.withOpacity(0.8),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: PrimaryTextField(
                        placeholder: L10n.cardNumberFieldPlaceHolder,
                      ),
                    ),
                    const SizedBox(width: 8),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        CupertinoIcons.viewfinder,
                        color: UIColor.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 36),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: PrimaryTextField(
                        placeholder: L10n.expireYearPlaceHolder,
                      ),
                    ),
                    const SizedBox(width: 40),
                    Expanded(
                      flex: 5,
                      child: Row(
                        children: [
                          Expanded(
                            child: PrimaryTextField(
                              placeholder: L10n.cardCvvCvcPlaceHolder,
                            ),
                          ),
                          const SizedBox(width: 8),
                          InkWell(
                            onTap: () {},
                            child: const Icon(
                              Icons.info_outline_rounded,
                              color: UIColor.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../shared/ui_color.dart';
import '../../../shared/ui_text_style.dart';

class PinField extends StatelessWidget {
  final int maxNumberOfFields;
  final String pin;

  const PinField({
    Key? key,
    this.maxNumberOfFields = 4,
    this.pin = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [for (int i = 0; i < maxNumberOfFields; i++) i].map((index) {
        return Expanded(
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              color: index == pin.length ? UIColor.white : UIColor.clear,
              border: Border.all(color: index == pin.length ? UIColor.green : UIColor.black.withOpacity(0.05)),
              borderRadius: index == 0
                  ? const BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))
                  : index == maxNumberOfFields - 1
                      ? const BorderRadius.only(topRight: Radius.circular(5), bottomRight: Radius.circular(5))
                      : BorderRadius.zero,
            ),
            child: Center(
              child: Text(
                index < pin.length ? pin[index] : '',
                style: UITextStyle.headline1(color: UIColor.green),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

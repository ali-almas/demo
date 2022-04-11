import 'package:flutter/material.dart';

import '../../../base/base_text_field.dart';
import '../primary/primary_text_field.dart';

class PhoneNumberField extends BaseTextField {
  const PhoneNumberField({
    Key? key,
    String? prefixText = '+994',
    String? label = "Mobil nömrə",
    String mask = 'xx xxx xx xx',
    IconData? suffixIcon = Icons.perm_contact_cal_rounded,
    VoidCallback? onTapContact,
    Function(String)? onChanged,
    String? errorText,
    TextEditingController? controller,
  }) : super(
          key: key,
          controller: controller,
          prefixText: prefixText,
          label: label,
          suffixIcon: suffixIcon,
          onTapSuffix: onTapContact,
          mask: mask,
          onChanged: onChanged,
          errorText: errorText,
        );

  @override
  Widget build(BuildContext context) {
    return PrimaryTextField(
      controller: controller,
      prefixText: prefixText,
      label: label,
      suffixIcon: suffixIcon,
      onTapSuffix: onTapSuffix,
      mask: mask,
      onChanged: onChanged,
      errorText: errorText,
    );
  }
}

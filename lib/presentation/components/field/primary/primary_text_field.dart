import 'package:flutter/material.dart';

import '../../../base/base_text_field.dart';
import '../../../shared/ui_color.dart';
import '../../../shared/ui_text_style.dart';
import 'primary_text_field_prefix.dart';

class PrimaryTextField extends BaseTextField {
  const PrimaryTextField({
    Key? key,
    String? placeholder,
    String? label,
    TextEditingController? controller,
    Function(String)? onChanged,
    String? prefixText,
    String? errorText,
    String? mask,
    Color? color,
    IconData? suffixIcon,
    VoidCallback? onTapSuffix,
    Color? suffixIconColor,
    bool? isPasswordHidden,
  }) : super(
            key: key,
            placeholder: placeholder,
            label: label,
            color: color,
            onChanged: onChanged,
            prefixText: prefixText,
            errorText: errorText,
            mask: mask,
            controller: controller,
            suffixIcon: suffixIcon,
            onTapSuffix: onTapSuffix,
            suffixIconColor: suffixIconColor,
            isPasswordHidden: isPasswordHidden);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: height,
          child: TextField(
            controller: controller,
            obscureText: isPasswordHidden ?? false,
            onChanged: (value) {
              if (onChanged != null) {
                onChanged!(value);
              }
            },
            cursorColor: UIColor.green,
            style: UITextStyle.headline2(color: color ?? UIColor.black),
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: UIColor.white,
              hintText: mask ?? placeholder,
              labelText: label,
              floatingLabelStyle: UITextStyle.headline3(color: UIColor.green),
              prefixIcon: prefixText != null ? PrimaryTextFieldPrefix(title: prefixText!) : null,
              suffixIcon: IconButton(
                iconSize: 24,
                color: suffixIconColor ?? UIColor.black,
                icon: Icon(suffixIcon),
                onPressed: onTapSuffix,
              ),
              hintStyle: labelTextStyle(),
              labelStyle: labelTextStyle(),
              focusColor: UIColor.green,
              focusedBorder: borderWith(UIColor.green),
              enabledBorder: borderWith(UIColor.black.withOpacity(0.5)),
              border: InputBorder.none,
            ),
          ),
        ),
        if (errorText != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: Text(
              errorText!,
              textAlign: TextAlign.start,
              style: UITextStyle.headline3(color: UIColor.red),
            ),
          ),
      ],
    );
  }

  labelTextStyle() {
    return UITextStyle.headline2(
      color: UIColor.black.withOpacity(0.25),
      fontWeight: FontWeight.normal,
    );
  }

  borderWith(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(width: 0.2, color: color),
      borderRadius: const BorderRadius.all(
        Radius.circular(5),
      ),
    );
  }
}

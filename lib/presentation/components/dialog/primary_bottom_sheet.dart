import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../base/base_button.dart';
import '../../route/navigation.dart';
import '../../shared/ui_text_style.dart';

class PrimaryBottomSheet {
  static show(context, {Image? image, String? text, List<BaseButton>? buttons}) async {
    return await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) {
        return SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: IconButton(
                      onPressed: () => Navigation.pop(null),
                      icon: const Icon(CupertinoIcons.clear),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    if (image != null) image,
                    const SizedBox(height: 16),
                    if (text != null)
                      Text(
                        text,
                        style: UITextStyle.headline2(),
                        textAlign: TextAlign.center,
                      ),
                    if (text != null) const SizedBox(height: 32),
                    if (buttons != null)
                      for (int i = 0; i < buttons.length; i++)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            buttons[i],
                            const SizedBox(height: 8),
                          ],
                        )
                  ],
                ),
              ),
              const SizedBox(height: 64),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';

class TermsAndConditionsList extends StatelessWidget {
  const TermsAndConditionsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      itemBuilder: ((context, index) {
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 24),
          title: Text(
            "1. Malesuada imperdiet tellus, ullamcorper",
            style: UITextStyle.headline2(color: UIColor.green),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Tempus commodo sed sollicitudin odio. Pellentesque fermentum, sit egestas lacus, eu. Sit est maecenas nunc lorem platea. Ac est elementum tellus dui at fringilla nibh ac lectus. Malesuada in arcu libero eget nunc in in viverra. Tempus commodo sed sollicitudin odio. Pellentesque fermentum, sit egestas lacus, eu. Sit est maecenas nunc lorem platea. Ac est elementum tellus dui at fringilla nibh ac lectus. Malesuada in arcu libero eget nunc in in viverra.",
              style: UITextStyle.headline3(),
            ),
          ),
        );
      }),
    );
  }
}

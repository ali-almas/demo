import 'package:flutter/material.dart';

import '../../../../../data/model/faq/faqs_model.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';

class FaqExpansionTile extends StatelessWidget {
  final List<Faq> faqs;

  const FaqExpansionTile({Key? key, required this.faqs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: UIColor.clear),
      child: ListView.builder(
        itemCount: faqs.length,
        itemBuilder: ((context, index) {
          return ExpansionTile(
            collapsedIconColor: UIColor.black,
            iconColor: UIColor.black,
            collapsedTextColor: UIColor.black,
            title: Text(
              faqs[index].question,
              style: UITextStyle.headline2(),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Text(
                  faqs[index].answer,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}

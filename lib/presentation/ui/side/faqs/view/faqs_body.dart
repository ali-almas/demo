import 'package:flutter/material.dart';

import '../../../../../data/model/faq/faqs_model.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import 'faqs_expansion_tile.dart';

class FaqsBody extends StatelessWidget {
  final List<Faq> faqs;

  const FaqsBody({Key? key, required this.faqs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            "Tez-tez soruşulan suallar",
            style: UITextStyle.headline1(color: UIColor.green),
          ),
          const SizedBox(height: 16),
          const Divider(),
          Expanded(
            child: FaqExpansionTile(faqs: faqs),
          ),
        ],
      ),
    );
  }
}

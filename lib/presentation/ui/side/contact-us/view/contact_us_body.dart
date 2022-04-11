import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../model/contact_us_item.dart';
import '../viewmodel/contact_us_view_model.dart';

class ContactUsBody extends StatelessWidget {
  const ContactUsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactUsViewModel = context.read<ContactUsViewModel>();

    return SafeArea(
      child: Column(
        children: [
          Text("Bizimlə əlaqə", style: UITextStyle.headline1()),
          const SizedBox(height: 16),
          const Divider(),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (_, index) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {},
                  contentPadding: const EdgeInsets.symmetric(horizontal: 24),
                  title: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      contactUsViewModel.items[index].title,
                      style: UITextStyle.headline3(
                        color: UIColor.black.withOpacity(0.3),
                      ),
                    ),
                  ),
                  subtitle: Align(
                    alignment: Alignment.centerLeft,
                    child: contactUsViewModel.items[index].type == ContactUsSubtitleType.text
                        ? Text(contactUsViewModel.items[index].subtitle, style: UITextStyle.headline2(color: UIColor.green))
                        : SvgPicture.asset(contactUsViewModel.items[index].subtitle),
                  ),
                );
              },
              itemCount: contactUsViewModel.items.length,
            ),
          ),
        ],
      ),
    );
  }
}

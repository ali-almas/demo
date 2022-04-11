import 'package:flutter/material.dart';

import '../../shared/ui_color.dart';
import '../../shared/ui_text_style.dart';

class ServiceMenuList extends StatelessWidget {
  final VoidCallback didTap;

  const ServiceMenuList({Key? key, required this.didTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, index) {
        return Card(
          elevation: 0,
          color: UIColor.green.withOpacity(0.06),
          child: ListTile(
            minVerticalPadding: 24,
            leading: const Icon(
              Icons.home_outlined,
              size: 36,
            ),
            onTap: didTap,
            title: Text(
              "Mobil operatorlar",
              style: UITextStyle.headline2(
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        );
      },
    );
  }
}

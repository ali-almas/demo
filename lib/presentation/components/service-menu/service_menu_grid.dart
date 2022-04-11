import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../button/service_button.dart';

class ServiceMenuGrid extends StatelessWidget {
  final VoidCallback didTap;
  const ServiceMenuGrid({Key? key, required this.didTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 3 / 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 24,
      children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((e) {
        return ServiceButton(
          image: SvgPicture.asset(
            "assets/svg/profile.svg",
          ),
          onTap: didTap,
          title: "Mobil operatorlar",
        );
      }).toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/ui_color.dart';

class MainBottomNavigationBarItem extends BottomNavigationBarItem {
  MainBottomNavigationBarItem({
    required String imagePath,
    required String title,
  }) : super(
          label: title,
          icon: SizedBox(
            width: 24,
            height: 24,
            child: SvgPicture.asset(
              imagePath,
              color: UIColor.black.withOpacity(0.6),
            ),
          ),
          activeIcon: SizedBox(
            width: 24,
            height: 24,
            child: SvgPicture.asset(imagePath, color: UIColor.green),
          ),
        );
}

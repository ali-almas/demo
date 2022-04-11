import 'package:flutter/material.dart';

import '../../delegate/selectable.dart';
import '../../shared/ui_color.dart';

class PageIndicator extends StatelessWidget {
  final List<Selectable> items;

  const PageIndicator({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: items.map((item) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: AnimatedContainer(
              height: 8,
              width: item.isSelected ? 24 : 8,
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: item.isSelected ? UIColor.black : UIColor.black.withOpacity(0.3),
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../shared/ui_color.dart';
import '../../shared/ui_text_style.dart';

class UserCards extends StatelessWidget {
  final String headText;
  final String cardNumber;
  final String imagePath;
  final VoidCallback? didTapCards;

  const UserCards({
    Key? key,
    required this.headText,
    required this.cardNumber,
    required this.imagePath,
    this.didTapCards,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: UIColor.black.withOpacity(0.8),
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        onTap: didTapCards,
        trailing: SvgPicture.asset(imagePath),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            Text(
              headText,
              style: UITextStyle.headline2(color: UIColor.white, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 24),
            Text(
              cardNumber,
              style: UITextStyle.headline2(color: UIColor.white, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

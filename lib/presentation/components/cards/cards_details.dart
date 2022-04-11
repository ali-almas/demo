import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/ui_color.dart';
import '../../shared/ui_text_style.dart';

class CardsDetails extends StatelessWidget {
  final String headText;
  final String cardNumber;
  final String cardDate;
  final String cardCVC;
  final String? cardTypeImage;
  final IconData? icon;
  final VoidCallback? didTapCard;

  const CardsDetails({
    Key? key,
    required this.headText,
    required this.cardNumber,
    required this.cardDate,
    required this.cardCVC,
    this.cardTypeImage,
    this.icon,
    this.didTapCard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: InkWell(
        onTap: didTapCard,
        child: Card(
          margin: EdgeInsets.zero,
          color: UIColor.black.withOpacity(0.8),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      headText,
                      style: UITextStyle.headline2(color: UIColor.white, fontWeight: FontWeight.w400),
                    ),
                    SvgPicture.asset(cardTypeImage ?? "")
                  ],
                ),
                const Spacer(),
                Text(
                  cardNumber,
                  style: UITextStyle.headline2(
                    color: UIColor.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(cardDate, style: UITextStyle.headline3(color: UIColor.white, fontSize: 16)),
                    Row(
                      children: [
                        Text(cardCVC, style: UITextStyle.headline3(color: UIColor.white, fontSize: 18)),
                        const SizedBox(width: 16),
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {},
                          child: Icon(
                            icon,
                            color: UIColor.white.withOpacity(0.6),
                            size: 22,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

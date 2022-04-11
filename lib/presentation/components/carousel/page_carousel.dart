import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../delegate/pageable.dart';
import '../../shared/ui_color.dart';
import '../../shared/ui_text_style.dart';
import 'package:provider/provider.dart';

class PageCarousel extends StatelessWidget {
  final Function(int)? didChangePage;
  final List<Pageable> items;

  const PageCarousel({
    Key? key,
    required this.items,
    this.didChangePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      carouselController: context.read<CarouselController>(),
      itemCount: items.length,
      itemBuilder: (context, index, _) {
        return Column(
          children: [
            Flexible(
              child: SvgPicture.asset(items[index].imagePath),
            ),
            const SizedBox(height: 64),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56.0),
              child: Text(
                items[index].title,
                style: UITextStyle.headline1(
                  color: UIColor.green,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            ),
          ],
        );
      },
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height / 2,
        viewportFraction: 1.0,
        enableInfiniteScroll: false,
        onPageChanged: (index, reason) {
          if (reason == CarouselPageChangedReason.manual) {
            if (didChangePage != null) didChangePage!(index);
          }
        },
      ),
    );
  }
}

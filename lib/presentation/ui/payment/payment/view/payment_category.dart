import 'package:demo/presentation/ui/payment/payment/view/payment_page_sort_buttons.dart';
import 'package:demo/presentation/ui/payment/payment/view/payment_page_sort_type.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodel/payment_category_view_model.dart';

class PaymentCategory extends StatelessWidget {
  const PaymentCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final paymentCategoryViewModel = context.watch<PaymentCategoryViewModel>();
    final pageController = context.read<PageController>();

    return Column(
      children: [
        PaymentPageSortButtons(
          type: paymentCategoryViewModel.sortType,
          didTapGrid: () => paymentCategoryViewModel.sort(PaymentSortType.grid),
          didTapList: () => paymentCategoryViewModel.sort(PaymentSortType.list),
        ),
        const SizedBox(height: 16),
        PaymentPageSortType(
          didTapService: () {
            pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
          sortType: paymentCategoryViewModel.sortType,
        ),
      ],
    );
  }
}

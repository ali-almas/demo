import 'package:demo/presentation/ui/payment/payment/view/payment_page_sort_buttons.dart';
import 'package:demo/presentation/ui/payment/payment/view/payment_page_sort_type.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../route/navigation.dart';
import '../../../../route/route_name.dart';
import '../../payment-result/viewmodel/payment_result_view_model.dart';
import '../viewmodel/payment_category_view_model.dart';
import '../viewmodel/payment_services_view_model.dart';

class PaymentServices extends StatelessWidget {
  const PaymentServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = context.read<PageController>();
    final paymentServicesViewModel = context.watch<PaymentServicesViewModel>();

    return Column(
      children: [
        PaymentPageSortButtons(
          type: paymentServicesViewModel.sortType,
          didTapGrid: () => paymentServicesViewModel.sort(PaymentSortType.grid),
          didTapList: () => paymentServicesViewModel.sort(PaymentSortType.list),
          backButton: BackButtonVisibility.visible,
          didTapBack: () {
            pageController.previousPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.ease,
            );
          },
        ),
        const SizedBox(height: 16),
        PaymentPageSortType(
          didTapService: () => Navigation.push(RouteName.paymentResultPage, arguments: PaymentResult.successful),
          sortType: paymentServicesViewModel.sortType,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../components/service-menu/service_menu_grid.dart';
import '../../../../components/service-menu/service_menu_list.dart';
import '../viewmodel/payment_category_view_model.dart';

class PaymentPageSortType extends StatelessWidget {
  final VoidCallback didTapService;
  final PaymentSortType sortType;

  const PaymentPageSortType({
    Key? key,
    required this.sortType,
    required this.didTapService,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (sortType == PaymentSortType.grid) {
      return Expanded(
        child: ServiceMenuGrid(
          didTap: didTapService,
        ),
      );
    } else {
      return Expanded(
        child: ServiceMenuList(
          didTap: didTapService,
        ),
      );
    }
  }
}

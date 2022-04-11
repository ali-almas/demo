import 'package:flutter/material.dart';

import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../viewmodel/payment_category_view_model.dart';
import '../viewmodel/payment_services_view_model.dart';

class PaymentPageSortButtons extends StatelessWidget {
  final PaymentSortType type;
  final VoidCallback? didTapBack;
  final VoidCallback didTapGrid;
  final VoidCallback didTapList;
  final BackButtonVisibility backButton;
  const PaymentPageSortButtons({
    Key? key,
    this.backButton = BackButtonVisibility.invisible,
    this.didTapBack,
    required this.didTapGrid,
    required this.didTapList,
    required this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (backButton == BackButtonVisibility.visible)
          Expanded(
            child: GestureDetector(
              onTap: didTapBack,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const Icon(Icons.arrow_back_ios),
                title: Text(
                  "Mobil operatorlar ",
                  style: UITextStyle.headline2(fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        IconButton(
          onPressed: didTapGrid,
          iconSize: 30,
          color: type == PaymentSortType.grid ? UIColor.green : UIColor.black.withOpacity(0.7),
          icon: const Icon(Icons.drag_indicator),
        ),
        IconButton(
          onPressed: didTapList,
          iconSize: 30,
          color: type == PaymentSortType.list ? UIColor.green : UIColor.black.withOpacity(0.7),
          icon: const Icon(Icons.view_list_rounded),
        ),
      ],
    );
  }
}

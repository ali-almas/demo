import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodel/confirm_transaction_view_model.dart';
import 'confirm_transaction_list_tile.dart';

class ConfirmTransactionList extends StatelessWidget {
  const ConfirmTransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final confirmTransactionViewModel = context.watch<ConfirmTransactionViewModel>();

    return ListView.builder(
      itemCount: confirmTransactionViewModel.items.length,
      itemBuilder: (context, index) {
        return ConfirmTransactionListTile(
          titleValue: confirmTransactionViewModel.items[index],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

import 'history_list_header.dart';
import 'history_list_tile.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (_, index) {
        if (index == 0) {
          return const HistoryListHeader();
        } else {
          return const HistoryListTile();
        }
      },
    );
  }
}

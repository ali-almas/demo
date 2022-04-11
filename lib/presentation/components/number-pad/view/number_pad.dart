import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../button/number_button.dart';
import '../model/number_pad_char_item.dart';
import '../viewmodel/number_pad_view_model.dart';

class NumberPad extends StatelessWidget {
  final NumberPadStyle style;
  final Function(CharItem) onTapNumber;
  const NumberPad({
    Key? key,
    required this.onTapNumber,
    this.style = NumberPadStyle.standard,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ChangeNotifierProvider(
        create: (_) => NumberPadViewModel(style: style),
        child: Consumer<NumberPadViewModel>(
          builder: (context, viewModel, child) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: viewModel.numberPadCharacters.map((rows) {
                return Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: rows.map((char) {
                      return Expanded(
                        child: Opacity(
                          opacity: char.opacity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: NumberButton(
                              title: char.value,
                              onTap: () => onTapNumber(char),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}

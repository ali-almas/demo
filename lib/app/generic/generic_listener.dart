import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/components/dialog/primary_bottom_sheet.dart';
import 'generic_state.dart';

class GenericListener<B extends StateStreamable<S>, S> extends BlocListener<B, S> {
  const GenericListener({
    Key? key,
    required BlocWidgetListener<S> listener,
    Widget? child,
  }) : super(key: key, listener: listener, child: child);

  @override
  BlocWidgetListener<S> get listener {
    return (context, state) {
      if (state is Failure) {
        PrimaryBottomSheet.show(context, text: state.error.message);
      } else {
        super.listener(context, state);
      }
    };
  }
}

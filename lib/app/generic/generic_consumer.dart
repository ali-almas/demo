import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/components/dialog/primary_bottom_sheet.dart';
import '../../presentation/components/indicator/loading_indicator.dart';
import 'generic_state.dart';

class GenericConsumer<B extends StateStreamable<S>, S> extends BlocConsumer<B, S> {
  const GenericConsumer({
    Key? key,
    required BlocWidgetBuilder<S> builder,
    required BlocWidgetListener<S> listener,
  }) : super(
          key: key,
          builder: builder,
          listener: listener,
        );

  @override
  BlocWidgetBuilder<S> get builder {
    return (context, state) {
      if (state is InProgress) {
        return const LoadingIndicator();
      }

      return super.builder(context, state);
    };
  }

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

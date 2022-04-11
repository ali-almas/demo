import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../../../../base/base_gradient.dart';
import '../../../../main/main/viewmodel/main_view_model.dart';
import '../viewmodel/card_info_view_model.dart';
import 'card_info_body.dart';

class CardInfoPage extends StatelessWidget with BaseGradient {
  final CardInfoPageState? pageState;
  final EntranceState? entranceState;

  const CardInfoPage({Key? key, this.pageState, this.entranceState}) : super(key: key);

  @override
  Widget? body(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => CardInfoViewModel(),
      child: CardInfoBody(pageState: pageState, entranceState: entranceState),
    );
  }
}

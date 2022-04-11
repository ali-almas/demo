import 'package:bloc/bloc.dart';

import '../../../../../app/di/injection.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../../data/exception/error.dart';
import '../../../../../data/model/faq/faqs_model.dart';
import '../../../../../data/repository/faq_repository.dart';

class FaqsCubit extends Cubit<GenericState> {
  final FaqsRepository _faqsRepository = getIt.get();

  FaqsCubit() : super(Initial());

  fetchFaqs() async {
    emit(InProgress());
    try {
      final faqs = await _faqsRepository.faqs();
      emit(Success<List<Faq>>(value: faqs));
    } on HttpException catch (e) {
      emit(Failure(e.error));
    }
  }
}

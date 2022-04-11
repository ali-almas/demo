import '../endpoint/faq/faqs.dart';
import '../model/faq/faqs_model.dart';
import '../service/api/api.dart';

abstract class FaqsRepository {
  Future<List<Faq>> faqs();
}

class FaqRepositoryImpl implements FaqsRepository {
  final ApiService apiService;

  FaqRepositoryImpl(this.apiService);

  @override
  Future<List<Faq>> faqs() async {
    final faqsModel = await apiService.task<FaqsModel>(FaqsEndpoint());
    return faqsModel.faqList;
  }
}

import '../endpoint/category/category.dart';
import '../model/category/category_model.dart';
import '../service/api/api.dart';

abstract class CategoryRepository {
  Future<CategoryModel> category();
}

class CategoryRepositoryImpl implements CategoryRepository {
  final ApiService apiService;

  CategoryRepositoryImpl(this.apiService);

  @override
  Future<CategoryModel> category() async {
    return await apiService.task<CategoryModel>(CategoryEndpoint());
  }
}

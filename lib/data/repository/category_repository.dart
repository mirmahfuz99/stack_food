import 'package:stack_food/data/provider/category_api.dart';


class CategoryRepository {
  final CategoryApiClient categoryApiClient;
  CategoryRepository({required this.categoryApiClient});

  getCategoryData(){
    return categoryApiClient.getCategoryData();
  }
}
import 'package:get/get.dart';
import '../data/model/category_model.dart';
import '../data/repository/category_repository.dart';

class CategoryController extends GetxController {
  final CategoryRepository categoryRepository;
  CategoryController({required this.categoryRepository});

  //category section
  final _categoryModel = CategoryModel().obs;
  get categoryModel => _categoryModel.value;
  set categoryModel(value) => _categoryModel.value = value;

  getCategoryData(){
    categoryRepository.getCategoryData().then (( data){
      categoryModel = data;
    });
  }
}

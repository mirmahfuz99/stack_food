import 'package:get/get.dart';
import '../data/model/popular_model.dart';
import '../data/repository/popular_food_repository.dart';

class PopularFoodController extends GetxController {
  final PopularFoodRepository popularFoodRepository;
  PopularFoodController({required this.popularFoodRepository});


  //popular section
  final _popularModel = PopularModel().obs;
  get popularModel => _popularModel.value;
  set popularModel(value) => _popularModel.value = value;

  getPopularData(){
    popularFoodRepository.getPopularData().then (( data){
      popularModel = data;
    });
  }
}

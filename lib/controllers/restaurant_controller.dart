import 'package:get/get.dart';
import 'package:stack_food/data/repository/restaurants_repository.dart';
import '../data/model/restaurant_model.dart';

class RestaurantController extends GetxController {
  final RestaurantsRepository restaurantsRepository;
  RestaurantController({required this.restaurantsRepository});

  //restaurant section
  final _restaurantModel = RestaurantModel().obs;
  get restaurantModel => _restaurantModel.value;
  set restaurantModel(value) => _restaurantModel.value = value;

  getRestaurantData(){
    restaurantsRepository.getRestaurantData().then (( data){
      restaurantModel = data;
    });
  }
}

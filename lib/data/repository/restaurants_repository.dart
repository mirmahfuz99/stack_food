import '../provider/restaurants_api.dart';

class RestaurantsRepository {
  final RestaurantApiClient restaurantApiClient;
  RestaurantsRepository({required this.restaurantApiClient});

  getRestaurantData(){
    return restaurantApiClient.getRestaurantData();
  }
}
import '../provider/popular_api.dart';

class PopularFoodRepository {
  final PopularApiClient popularApiClient;
  PopularFoodRepository({required this.popularApiClient});

  getPopularData(){
    return popularApiClient.getPopularData();
  }
}
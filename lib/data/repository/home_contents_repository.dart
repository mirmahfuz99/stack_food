import '../provider/home_contents_api.dart';

class HomeContentRepository {
  final HomeContentApiClient homeContentApiClient;
  HomeContentRepository({required this.homeContentApiClient});

  getConfigData(){
    return homeContentApiClient.getAppConfig();
  }
  getBannersData(){
    return homeContentApiClient.getBannerData();
  }
  getCategoryData(){
    return homeContentApiClient.getCategoryData();
  }
  getPopularData(){
    return homeContentApiClient.getPopularData();
  }
  getFoodCampaignData(){
    return homeContentApiClient.getFoodCampaignData();
  }
  getRestaurantData(){
    return homeContentApiClient.getRestaurantData();
  }

}
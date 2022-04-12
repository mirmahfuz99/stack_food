import '../provider/home_contents_api.dart';

class HomeContentRepository {
  final HomeContentApiClient homeContentApiClient;
  HomeContentRepository({required this.homeContentApiClient});

  getConfigData(){
    return homeContentApiClient.getAppConfig();
  }
}
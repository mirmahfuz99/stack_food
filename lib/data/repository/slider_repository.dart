import 'package:stack_food/data/provider/banners_api.dart';

class SliderRepository {
  final BannersApiClient bannersApiClient;
  SliderRepository({required this.bannersApiClient});

  getBannersData(){
    return bannersApiClient.getBannerData();
  }
}
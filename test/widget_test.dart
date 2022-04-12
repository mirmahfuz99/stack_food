import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:stack_food/data/model/banners_model.dart';
import 'package:stack_food/data/model/campaigns_model.dart';
import 'package:stack_food/data/model/category_model.dart';
import 'package:stack_food/data/model/config_model.dart';
import 'package:stack_food/data/model/popular_model.dart';
import 'package:stack_food/data/model/restaurant_model.dart';
import 'package:stack_food/data/provider/home_contents_api.dart';

void main() {
  test('main', () async {
    // ConfigModel configModel = await HomeContentApiClient(httpClient: http.Client()).getAppConfig();
    // print(configModel.baseUrls!.bannerImageUrl);

    // BannersModel bannersModel = await HomeContentApiClient(httpClient: http.Client()).getBannerData();
    // print(bannersModel.banners!.length);

    // CategoryModel categoryModel = await HomeContentApiClient(httpClient: http.Client()).getCategoryData();
    // print(categoryModel.categoryList!.length);

     /*PopularModel popularModel = await HomeContentApiClient(httpClient: http.Client()).getPopularData();
     print(popularModel.products!.length);
     */

     // CampaignsModel campaignsModel = await HomeContentApiClient(httpClient: http.Client()).getFoodCampaignData();
     // RestaurantModel restaurantModel = await HomeContentApiClient(httpClient: http.Client()).getRestaurantData();
     // print(restaurantModel.restaurants!.length);
  });
}
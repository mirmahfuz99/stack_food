import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:stack_food/controllers/bookmark_controller.dart';
import 'package:stack_food/controllers/bottom_nav_controller.dart';
import 'package:stack_food/controllers/cart_controller.dart';
import 'package:stack_food/controllers/favourite_controller.dart';
import 'package:stack_food/controllers/food_campaign_controller.dart';
import 'package:stack_food/controllers/menu_controller.dart';
import 'package:stack_food/controllers/popular_food_controller.dart';
import 'package:stack_food/data/provider/banners_api.dart';
import 'package:stack_food/data/provider/category_api.dart';
import 'package:stack_food/data/provider/food_campaign_api.dart';
import 'package:stack_food/data/provider/popular_api.dart';
import 'package:stack_food/data/repository/food_campaign_repository.dart';
import 'package:stack_food/data/repository/popular_food_repository.dart';
import 'package:stack_food/data/repository/slider_repository.dart';
import '../controllers/category_controller.dart';
import '../controllers/home_controller.dart';
import '../controllers/slider_indicator_controller.dart';
import '../data/provider/home_contents_api.dart';
import '../data/repository/category_repository.dart';
import '../data/repository/home_contents_repository.dart';

class InitialControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());
    Get.lazyPut(() => FavouriteController());
    Get.lazyPut(() => CartController());
    Get.lazyPut(() => BookmarkController());
    Get.lazyPut(() => MenuController());
    Get.lazyPut(() => SliderIndicatorController(sliderRepository: SliderRepository(bannersApiClient: BannersApiClient(httpClient: http.Client()))));
    Get.lazyPut(() => HomeController(homeContentRepository: HomeContentRepository(homeContentApiClient: HomeContentApiClient(httpClient: http.Client()))));
    Get.lazyPut(() => CategoryController(categoryRepository: CategoryRepository(categoryApiClient: CategoryApiClient(httpClient: http.Client()))));
    Get.lazyPut(() => PopularFoodController(popularFoodRepository: PopularFoodRepository(popularApiClient: PopularApiClient(httpClient: http.Client()))));
    Get.lazyPut(() => FoodCampaignController(foodCampaignRepository: FoodCampaignRepository(foodCampaignApiClient: FoodCampaignApiClient(httpClient: http.Client()))));

  }
}
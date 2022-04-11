import 'package:get/get.dart';
import 'package:stack_food/data/model/popular_model.dart';
import '../data/model/banners_model.dart';
import '../data/model/campaigns_model.dart';
import '../data/model/category_model.dart';
import '../data/model/config_model.dart';
import '../data/model/restaurant_model.dart';
import '../data/repository/home_contents_repository.dart';

class HomeController extends GetxController {
  final HomeContentRepository homeContentRepository;
  HomeController({required this.homeContentRepository});

  //app config section
  final _configModel = ConfigModel().obs;
  get configModel => _configModel.value;
  set configModel(value) => _configModel.value = value;

  getAppConfig(){
    homeContentRepository.getConfigData().then (( data){
      configModel = data;
    });
  }

  //banner section
  final _bannersModel = BannersModel().obs;
  get bannersModel => _bannersModel.value;
  set bannersModel(value) => _bannersModel.value = value;

  getBannerData(){
    homeContentRepository.getBannersData().then (( data){
      bannersModel = data;
    });
  }

  //category section
  final _categoryModel = CategoryModel().obs;
  get categoryModel => _categoryModel.value;
  set categoryModel(value) => _categoryModel.value = value;

  getCategoryData(){
    homeContentRepository.getCategoryData().then (( data){
      categoryModel = data;
    });
  }

  //popular section
  final _popularModel = PopularModel().obs;
  get popularModel => _popularModel.value;
  set popularModel(value) => _popularModel.value = value;

  getPopularData(){
    homeContentRepository.getPopularData().then (( data){
      categoryModel = data;
    });
  }

  //campaigns section
  final _campaignsModel = CampaignsModel().obs;
  get campaignsModel => _campaignsModel.value;
  set campaignsModel(value) => _campaignsModel.value = value;

  getFoodCampaignData(){
    homeContentRepository.getFoodCampaignData().then (( data){
      campaignsModel = data;
    });
  }

  //restaurant section
  final _restaurantModel = RestaurantModel().obs;
  get restaurantModel => _restaurantModel.value;
  set restaurantModel(value) => _restaurantModel.value = value;

  getRestaurantData(){
    homeContentRepository.getRestaurantData().then (( data){
      restaurantModel = data;
    });
  }

}
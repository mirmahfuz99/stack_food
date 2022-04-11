import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:stack_food/data/model/banners_model.dart';
import 'package:stack_food/data/model/category_model.dart';
import 'package:stack_food/data/model/popular_model.dart';
import '../../core/utility/api_access.dart';
import '../model/campaigns_model.dart';
import '../model/config_model.dart';
import '../model/restaurant_model.dart';

class HomeContentApiClient {
  final http.Client httpClient;
  HomeContentApiClient({ required this.httpClient});

  Map<String,String> headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
    'zoneId': "1"
  };

  getAppConfig() async {
    Uri url = Uri.parse("${ApiAccess.baseUrl}${ApiAccess.configurationUrl}");
    try {
      var response = await httpClient.get(url,headers: headers);
      if(response.statusCode == 200){
        ConfigModel configModel = ConfigModel.fromJson(json.decode(response.body));
        return configModel;
      }
    }catch(_) {

    }
  }

  getBannerData() async {
    Uri url = Uri.parse("${ApiAccess.baseUrl}${ApiAccess.bannerUrl}");
    try {
      var response = await httpClient.get(url,headers: headers);
      if(response.statusCode == 200){
        BannersModel bannersModel = BannersModel.fromJson(json.decode(response.body));
        return bannersModel;
      }
    }catch(_) {

    }
  }
  getCategoryData() async {
    Uri url = Uri.parse("${ApiAccess.baseUrl}${ApiAccess.categoryUrl}");
    try {
      var response = await httpClient.get(url,headers: headers);
      if(response.statusCode == 200){
        CategoryModel categoryModel = CategoryModel.fromJson(json.decode(response.body));
        return categoryModel;
      }
    }catch(_) {

    }
  }
  getPopularData() async {
    Uri url = Uri.parse("${ApiAccess.baseUrl}${ApiAccess.popularUrl}");
    try {
      var response = await httpClient.get(url,headers: headers);
      if(response.statusCode == 200){
        PopularModel popularModel = PopularModel.fromJson(json.decode(response.body));
        return popularModel;
      }
    }catch(_) {

    }
  }

  getFoodCampaignData() async {
    Uri url = Uri.parse("${ApiAccess.baseUrl}${ApiAccess.foodCampaignUrl}");
    try {
      var response = await httpClient.get(url,headers: headers);
      if(response.statusCode == 200){
        CampaignsModel popularModel = CampaignsModel.fromJson(json.decode(response.body));
        return popularModel;
      }
    }catch(_) {

    }
  }

  getRestaurantData() async {
    Uri url = Uri.parse("${ApiAccess.baseUrl}${ApiAccess.restaurantUrl}");
    try {
      var response = await httpClient.get(url,headers: headers);
      if(response.statusCode == 200){
        RestaurantModel popularModel = RestaurantModel.fromJson(json.decode(response.body));
        return popularModel;
      }
    }catch(_) {

    }
  }
}
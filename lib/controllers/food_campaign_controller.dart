import 'package:get/get.dart';
import 'package:stack_food/data/repository/food_campaign_repository.dart';
import '../data/model/campaigns_model.dart';

class FoodCampaignController extends GetxController {
  final FoodCampaignRepository foodCampaignRepository;
  FoodCampaignController({required this.foodCampaignRepository});

  //campaigns section
  final _campaignsModel = CampaignsModel().obs;
  get campaignsModel => _campaignsModel.value;
  set campaignsModel(value) => _campaignsModel.value = value;

  getFoodCampaignData(){
    foodCampaignRepository.getFoodCampaignData().then (( data){
      campaignsModel = data;
    });
  }
}

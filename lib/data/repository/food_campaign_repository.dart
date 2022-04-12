import 'package:stack_food/data/provider/food_campaign_api.dart';


class FoodCampaignRepository {
  final FoodCampaignApiClient foodCampaignApiClient;
  FoodCampaignRepository({required this.foodCampaignApiClient});

  getFoodCampaignData(){
    return foodCampaignApiClient.getFoodCampaignData();
  }
}
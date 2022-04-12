import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stack_food/controllers/food_campaign_controller.dart';
import '../../../../components/app_texts.dart';
import '../../../../data/model/campaigns_model.dart';
import 'campaign_item.dart';

class FoodCampaign extends GetView<FoodCampaignController> {
  String campaignImageUrl;
  FoodCampaign({Key? key,required this.campaignImageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<FoodCampaignController>(
      initState: (state){
        Get.find<FoodCampaignController>().getFoodCampaignData();
      },
      builder: (_){
        List<Campaigns>? campaignsList = _.campaignsModel.campaignsList;
        if(campaignsList!.isNotEmpty) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MediumText(
                    fontSize: 15.0,
                    text: "Food Campaign",color: Colors.black,),
                  SeeAll(),
                ],
              ),
              SizedBox(
                height: 120.0,
                child: ListView.builder(
                    itemCount: campaignsList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CampaignItem(campaigns: campaignsList.elementAt(index), campaignImageUrl: campaignImageUrl),
                      );
                    }
                ),
              ),
            ],
          );
        }
        return const SizedBox();
      },
    );
  }
}

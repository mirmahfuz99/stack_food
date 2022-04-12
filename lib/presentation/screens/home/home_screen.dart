import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stack_food/controllers/home_controller.dart';
import 'package:stack_food/presentation/screens/home/widgets/category.dart';
import 'package:stack_food/presentation/screens/home/widgets/food_campaign.dart';
import 'package:stack_food/presentation/screens/home/widgets/popular_food.dart';
import 'package:stack_food/presentation/screens/home/widgets/search_header.dart';
import '../../../core/constants/strings.dart';
import '../../../core/helper/helpers.dart';
import '../../../data/model/config_model.dart';
import 'widgets/home_slider.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetX<HomeController>(
          initState: (state) {
            Get.find<HomeController>().getAppConfig();
          },
          builder: (_) {
            ConfigModel configModel = controller.configModel;
            if(configModel != null)
            return _buildWidget(configModel);
            return const SizedBox();
          },
        ));
  }

  _buildWidget(ConfigModel configModel) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Get.statusBarHeight),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.home_filled,
                      color: Colors.grey,
                    ),
                    Text(
                      homeTitle,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      height: 8.0,
                      width: 8.0,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25.0)),
                    ),
                    const Icon(Icons.notifications),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            SearchHeader(),
            Gaps.verticalGapOf(10.0),
            if(configModel.baseUrls != null)
            HomeSlider(bannerImageUrl: configModel.baseUrls!.bannerImageUrl!,),
            if(configModel.baseUrls != null)
              Categories(categoryImageUrl:  configModel.baseUrls!.categoryImageUrl!,),
            if(configModel.baseUrls != null)
              PopularFood(productUrl:  configModel.baseUrls!.productImageUrl!,),
            if(configModel.baseUrls != null)
              FoodCampaign(campaignImageUrl:  configModel.baseUrls!.campaignImageUrl!,),
            Gaps.verticalGapOf(80.0),

          ],
        ),
      ),
    );
  }
}

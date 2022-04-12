import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stack_food/presentation/screens/home/widgets/pager_dots.dart';
import 'package:stack_food/presentation/screens/home/widgets/slider_item.dart';
import '../../../../controllers/slider_indicator_controller.dart';
import '../../../../data/model/banners_model.dart';

class HomeSlider extends GetView<SliderIndicatorController> {
  final String bannerImageUrl;
  const HomeSlider({Key? key,required this.bannerImageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<SliderIndicatorController>(
      initState: (state){
        Get.find<SliderIndicatorController>().getBannerData();
      },
      builder: (_){
        List<Banners>? banners = _.bannersModel.banners;
        if(banners != null) {
          return  Column(
          children: [
            SliderItem(banners: banners,bannerImageUrl: bannerImageUrl,),
            const SizedBox(height: 7.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  banners.length,
                      (index) => PagerDot(index: index, currentIndex: controller.currentSlider.value)),
            ),
          ],
        );
        }
        return const SizedBox();
      },
    );
  }
}


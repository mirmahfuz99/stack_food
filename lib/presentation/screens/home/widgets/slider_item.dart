import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:flutter/material.dart';
import '../../../../components/image_loader.dart';
import '../../../../controllers/slider_indicator_controller.dart';
import '../../../../data/model/banners_model.dart';

class SliderItem extends GetView<SliderIndicatorController> {
  List<Banners>? banners;
  String bannerImageUrl;

  SliderItem({Key? key, required this.banners, required this.bannerImageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1.0,
        onPageChanged: (index, reason) {
          controller.onSlideChanged(index);
        },
      ),
      items: banners!.map((image) {
        return AppImagerLoader(imageUrl: "$bannerImageUrl/${image.image!}", height: 200.0, width: double.infinity);
      }).toList(),
    );
  }
}
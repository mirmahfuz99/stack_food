import 'package:get/get.dart';
import '../data/model/banners_model.dart';
import '../data/repository/slider_repository.dart';

class SliderIndicatorController extends GetxController {
  final SliderRepository sliderRepository;
  SliderIndicatorController({required this.sliderRepository});

  var currentSlider = 0.obs;
  void onSlideChanged(int index) {
    currentSlider.value = index;
  }

  //banner section
  final _bannersModel = BannersModel().obs;
  get bannersModel => _bannersModel.value;
  set bannersModel(value) => _bannersModel.value = value;

  getBannerData(){
    sliderRepository.getBannersData().then (( data){
      bannersModel = data;
    });
  }
}

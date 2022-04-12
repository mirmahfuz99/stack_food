import 'package:get/get.dart';
import '../data/model/config_model.dart';
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

}
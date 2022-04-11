import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:stack_food/controllers/home_controller.dart';
import 'package:stack_food/data/provider/home_contents_api.dart';
import 'package:stack_food/data/repository/home_contents_repository.dart';

class HomeBindings implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>((){
      return HomeController(homeContentRepository: HomeContentRepository(homeContentApiClient: HomeContentApiClient(httpClient: http.Client())));
    });
  }
}
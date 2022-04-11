import 'package:get/get.dart';
import 'package:stack_food/controllers/favourite_controller.dart';

class FavouriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavouriteController());
  }
}
import 'package:get/get.dart';
import 'package:stack_food/controllers/bookmark_controller.dart';
import 'package:stack_food/controllers/bottom_nav_controller.dart';
import 'package:stack_food/controllers/cart_controller.dart';
import 'package:stack_food/controllers/favourite_controller.dart';
import 'package:stack_food/controllers/menu_controller.dart';

class BottomNavBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());
    Get.lazyPut(() => FavouriteController());
    Get.lazyPut(() => CartController());
    Get.lazyPut(() => BookmarkController());
    Get.lazyPut(() => MenuController());
  }
}
import 'package:get/get.dart';


enum BnbItem { home, favourite, cart, bookmark, menu }

class BottomNavController extends GetxController {
  static BottomNavController get to => Get.find();

  var currentPage = BnbItem.home.obs;
  void changePage(BnbItem bnbItem) {
    currentPage.value = bnbItem;
  }

}

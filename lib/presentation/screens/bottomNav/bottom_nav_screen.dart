import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stack_food/controllers/bottom_nav_controller.dart';
import 'package:stack_food/presentation/screens/bookmark/bookmark_screen.dart';
import 'package:stack_food/presentation/screens/cart/cart_screen.dart';
import 'package:stack_food/presentation/screens/favourite/favourite_screen.dart';
import 'package:stack_food/presentation/screens/home/home_screen.dart';
import 'package:stack_food/presentation/screens/menu/menu_screen.dart';

class BottomNavScreen extends GetView<BottomNavController> {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Obx(() => _bottomNavigationView()),
          Obx(() => Positioned(bottom: 0, child: _bottomNavigationBar(context))),
        ],
      )
    );
  }


  Widget _bottomNavigationBar(BuildContext context) {
    return Container(
      height: 56.0,
      width: Get.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _bnbItem(
            icon: const Icon(Icons.home),
            bnbItem: BnbItem.home,
            onTap: (){
              controller.changePage(BnbItem.home);
            },
            toolTip: 'home',
          ),

          _bnbItem(
              icon: const Icon(Icons.favorite),
              bnbItem: BnbItem.favourite,
              onTap: () {
                controller.changePage(BnbItem.favourite);
              },
              toolTip: 'favourite'),
          _cart(
              onTap: () {
                controller.changePage(BnbItem.cart);
              }
          ),

          _bnbItem(
              icon: const Icon(Icons.bookmark),
              bnbItem: BnbItem.bookmark,
              onTap: () {
                controller.changePage(BnbItem.bookmark);
              },
              toolTip: 'bookmark'),
          _bnbItem(
              icon: const Icon(Icons.menu),
              bnbItem: BnbItem.menu,
              onTap: () {
                controller.changePage(BnbItem.menu);
              },
              toolTip: 'menu'),
        ],
      ),
    );
  }

  Widget _bnbItem(
      {required Icon icon,
        required BnbItem bnbItem,
        required GestureTapCallback onTap,
        required String toolTip}) {

    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          IconButton(
            color:controller.currentPage.value == bnbItem ? Colors.deepOrange : Colors.grey,
            onPressed: onTap,
            tooltip: toolTip,
            padding: const EdgeInsets.all(0),
            icon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: icon),
            ),
          ),
        ],
      ),
    );
  }

  Widget _cart({required GestureTapCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
              width: 54.0,
              height: 54.0,
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(50.0))
                ),
              )),
          const Icon(Icons.shopping_cart,color: Colors.white,),
        ],
      ),
    );
  }

  Widget _bottomNavigationView() {
    switch(controller.currentPage.value) {
      case BnbItem.home:
        return const HomeScreen();
      case BnbItem.favourite:
        return const FavouriteScreen();
      case BnbItem.cart:
        return const CartScreen();
      case BnbItem.bookmark:
        return const BookmarkScreen();
      case BnbItem.menu:
        return const MenuScreen();
    }
  }

}
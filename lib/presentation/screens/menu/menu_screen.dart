import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/favourite_controller.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Menu')),
      body: Center(
        child: Text(Get.find<FavouriteController>().title.value),
      ),
    );
  }
}
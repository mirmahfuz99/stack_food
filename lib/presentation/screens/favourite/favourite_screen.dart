import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/favourite_controller.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favourite')),
      body: Center(
        child: Text(Get.find<FavouriteController>().title.value),
      ),
    );
  }
}
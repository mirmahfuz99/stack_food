import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stack_food/controllers/home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: GetX<HomeController>(
          initState: (state){
            Get.find<HomeController>().getAppConfig();
          },
          builder: (_){
            return Text("Okay");
          },
        ),
      )
    );
  }
}

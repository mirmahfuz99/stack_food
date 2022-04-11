import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:stack_food/routes/app_screens.dart';

void main() {
  runApp( GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.landingScreen,
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
  ));
}
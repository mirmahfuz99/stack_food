import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:stack_food/bindings/home_bindings.dart';
import 'package:stack_food/presentation/screens/home/home_screen.dart';
import '../bindings/bottom_nav_bindings.dart';
import '../presentation/screens/bottomNav/bottom_nav_screen.dart';
part 'app_routes.dart';

class AppPages {
  static const homeScreen = Routes.homeScreen;
  static final pages = [
    GetPage(
      name: Routes.landingScreen,
      page: () => const BottomNavScreen(),
      binding: InitialControllerBinding(),
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
      binding: HomeBindings(),
    ),
  ];
}
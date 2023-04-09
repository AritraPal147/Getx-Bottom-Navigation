import 'package:get/get.dart';
import 'package:getx_bottom_navigation/pages/add/add_controller.dart';
import 'package:getx_bottom_navigation/pages/dashboard/dashboard_controller.dart';
import 'package:getx_bottom_navigation/pages/home/home_controller.dart';

class DashBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardController>(() => DashBoardController());
    Get.lazyPut<HomePageController>(() => HomePageController());
    Get.lazyPut<AddController>(() => AddController());
  }
}

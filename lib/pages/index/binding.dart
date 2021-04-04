import 'package:get/get.dart';

import 'package:blog/pages/account/controller.dart';
import 'package:blog/pages/home/controller.dart';

import 'controller.dart';

class IndexBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IndexController>(() => IndexController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<AccountController>(() => AccountController());
  }
}

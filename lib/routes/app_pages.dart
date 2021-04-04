import 'package:get/get.dart';

import 'package:blog/pages/index/binding.dart';
import 'package:blog/pages/index/view.dart';

import 'app_routes.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.INDEX,
      page: () => IndexPage(),
      binding: IndexBinding(),
    ),
  ];
}

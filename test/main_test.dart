// Import the test package and
import 'package:blog/pages/account/view.dart';
import 'package:blog/pages/alerts/view.dart';
import 'package:blog/pages/home/view.dart';
import 'package:blog/pages/blog/view.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:get_test/get_test.dart';

void main() {
  getTest(
    "Test routes application endpoint.",
    widgetTest: (tester) async {
      expect('/', Get.currentRoute);

      Get.to(HomePage());
      expect('/home', Get.currentRoute);

      Get.to(BlogPage());
      expect('/blog', Get.currentRoute);

      Get.to(AlertsPage());
      expect('/alerts', Get.currentRoute);

      Get.to(AccountPage());
      expect('/account/login', Get.currentRoute);

      Get.offAll(HistoryPage());
      expect('/history', Get.currentRoute);
    },
  );
}

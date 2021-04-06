// Import the test package and
import 'package:blog/pages/account/view.dart';
import 'package:blog/pages/alerts/view.dart';
import 'package:blog/pages/home/view.dart';
import 'package:blog/pages/news/view.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:get_test/get_test.dart';

void main() {
  getTest(
    "Test routes application endpoint.",
    widgetTest: (tester) async {
      expect('/', Get.currentRoute);

      Get.to(HomePage());
      expect('/Home', Get.currentRoute);

      Get.to(NewsPage());
      expect('/News', Get.currentRoute);

      Get.to(AlertsPage());
      expect('/Alerts', Get.currentRoute);

      Get.to(AccountPage());
      expect('/Account', Get.currentRoute);

      Get.offAll(HomePage());
      expect('/Home', Get.currentRoute);
    },
  );
}

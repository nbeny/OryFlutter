import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import 'service.dart';
import 'model.dart';

class HealthAliveController extends GetxController {
  RxBool isLoading = true.obs;
  Rx<HealthAlive> healthAlive = HealthAlive('down').obs;

  @override
  void onInit() {
    fetchHealthAlive();
    super.onInit();
    print(healthAlive);
  }

  void fetchHealthAlive() async {
    try {
      isLoading(true);
      HealthAlive? result = await HealthAliveService.getHealthAlive();
      if (result != null) {
        healthAlive = result.obs;
      }
      print(healthAlive);
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading(false);
    }
  }
}

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
  }

  void fetchHealthAlive() async {
    try {
      isLoading(true);
      HealthAlive? result = await HealthAliveService.getHealthAlive();
      if (result != null) {
        healthAlive = result.obs;
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading(false);
    }
  }
}

class HealthReadyController extends GetxController {
  RxBool isLoading = true.obs;
  Rx<HealthReady> healthReady = HealthReady('down').obs;

  @override
  void onInit() {
    fetchHealthReady();
    super.onInit();
  }

  void fetchHealthReady() async {
    try {
      isLoading(true);
      HealthReady? result = await HealthReadyService.getHealthReady();
      if (result != null) {
        healthReady = result.obs;
      }
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading(false);
    }
  }
}

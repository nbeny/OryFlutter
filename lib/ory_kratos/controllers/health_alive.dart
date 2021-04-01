import 'package:get/get.dart';

import 'package:blog/ory_kratos/services/health_alive.dart';
import 'package:blog/ory_kratos/models/health_alive.dart';
import 'package:get/state_manager.dart';

class HealthAliveController extends GetxController {
  RxBool isLoading = true.obs;
  Rx<HealthAlive> healthAlive = HealthAlive('false').obs;

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
}

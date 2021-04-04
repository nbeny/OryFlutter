import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:blog/ory/kratos/health_alive/controller.dart';

class HealthAliveView extends StatelessWidget {
  final HealthAliveController healthAliveController =
      Get.put(new HealthAliveController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      if (healthAliveController.isLoading.value)
        return Center(child: CircularProgressIndicator());
      else
        return Center(
            child: Text(healthAliveController.healthAlive.value.status));
    }));
  }
}

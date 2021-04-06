import 'package:blog/ory/kratos/health/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:blog/ory/kratos/health/controller.dart';

class HealthView extends StatelessWidget {
  final HealthReadyController healthReadyController =
      Get.put(new HealthReadyController());
  final HealthAliveController healthAliveController =
      Get.put(new HealthAliveController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      if (healthAliveController.isLoading.value)
        return Center(child: CircularProgressIndicator());
      else
        return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(healthAliveController.healthAlive.value.status),
              Text(healthReadyController.healthReady.value.status),
            ]);
    }));
  }
}

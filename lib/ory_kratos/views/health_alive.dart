import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:blog/constants/i18n_en.dart';
import 'package:blog/constants/style.dart';
import 'package:blog/ory_kratos/controllers/health_alive.dart';

class HealthAliveView extends StatelessWidget {
  final HealthAliveController healthAliveController = Get.put(HealthAliveController())

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(I18nApp.title)
      ),
      body: Obx(() {
        if (healthAliveController.isLoading.value)
          return Center(child: CircularProgressIndicator());
        else
          return Center(child: healthAliveController.healthAlive)
            }
          )
      })
    )
  }
}
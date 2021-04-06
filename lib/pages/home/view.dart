import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:blog/ory/kratos/health/view.dart';
import 'controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.title,
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: HealthView(),
      ),
    );
  }
}

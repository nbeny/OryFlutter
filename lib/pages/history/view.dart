import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:blog/pages/history/controller.dart';
import 'package:blog/ory/kratos/registration/view.dart';

class HistoryPage extends GetView<HistoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: RegistrationView(),
      ),
    );
  }
}

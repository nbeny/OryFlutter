import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:blog/pages/history/controller.dart';

class HistoryPage extends GetView<HistoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "History Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:blog/pages/blog/controller.dart';

class BlogPage extends GetView<BlogController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            "Blog Page",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

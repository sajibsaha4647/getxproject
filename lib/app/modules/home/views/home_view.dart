import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.ABOUT, arguments: {
                "name": "saha",
              });
            },
            child: const Text(
              'HomeView is working',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      )),
    );
  }
}

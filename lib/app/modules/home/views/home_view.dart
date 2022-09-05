import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx/app/modules/about/controllers/about_controller.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final homecontroller = Get.find<HomeController>();
    final aboutcontroller = Get.put<AboutController>(AboutController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: [
          GetBuilder<HomeController>(builder: (_) {
            return Text(
              homecontroller.count.toString(),
              style: const TextStyle(fontSize: 20),
            );
          }),
          ElevatedButton(
              onPressed: () {
                homecontroller.incrementhome();
              },
              child: const Text("click")),
          const Text(
            "about",
            style: TextStyle(fontSize: 20),
          ),
          GetBuilder<AboutController>(builder: (aaa) {
            return Text(
              aaa.count.toString(),
              style: const TextStyle(fontSize: 20),
            );
          }),
          ElevatedButton(
              onPressed: () {
                aboutcontroller.increment();
              },
              child: const Text("click")),
        ],
      )),
    );
  }
}

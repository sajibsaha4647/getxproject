import 'package:get/get.dart';

class AboutController extends GetxController {
  var count = 0.obs;

  var name = "sajib saha";

  var details = {"name": "saha", "age": "25", "homw": "comilla"};

  void changename(String val) {
    name = val;
  }

  void increment() {
    count.value++;
  }

  void decrement() {
    if (count.value != 0) {
      count.value--;
    }
  }
}

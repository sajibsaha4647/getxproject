import 'package:get/get.dart';

class AboutController extends GetxController {
  var count = 0;

  var name = "sajib saha";

  var details = {"name": "saha", "age": "25", "homw": "comilla"};

  void changename(String val) {
    name = val;
    update();
  }

  void increment() {
    count++;
    update();
  }

  void decrement() {
    if (count != 0) {
      count--;
    }
    update();
  }
}

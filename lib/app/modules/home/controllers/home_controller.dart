import 'package:get/get.dart';

class HomeController extends GetxController {
  var count = 0;

  void incrementhome() {
    count++;
    update();
  }
}

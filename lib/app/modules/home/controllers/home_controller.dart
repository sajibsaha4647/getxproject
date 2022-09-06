import 'package:get/get.dart';
import 'package:getx/app/data/models/postModel.dart';
import 'package:getx/app/data/providers/user_provider.dart';

class HomeController extends GetxController {
  var count = 0;

  final listdata = <PostModel>[].obs;

  var loading = false.obs;

  @override
  void onInit() async {
    loading.value = true;
     UserProvider().getPosts().then((val) {
      if (val != null) {
        listdata.addAll(val);
      }
      loading.value = false;
    }).onError((error, stackTrace) {
      loading.value = false;
    });

    super.onInit();
  }

  void incrementhome() {
    count++;
    update();
  }
}

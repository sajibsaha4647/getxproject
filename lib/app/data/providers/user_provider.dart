import 'package:get/get.dart';
import 'package:getx/app/data/core/utils/App_urls.dart';
import 'package:getx/app/data/models/postModel.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'YOUR-API-URL';
  }

   Future<List<PostModel>?> getPosts(int page) async {
    String url = AppConfig.getposts;
    print('$url');

    try {
      var response = await get(url);
      if (response.statusCode == 200) {
        List<PostModel> model = response.body['Search'];
        return postfrom
      } else {
        return [];
      }
    } catch (error) {
      print('movies data not found $error');
      return [];
    }
  }
  


}

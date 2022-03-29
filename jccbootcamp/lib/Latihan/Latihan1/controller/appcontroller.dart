import 'package:get/get.dart';
import 'package:jccbootcamp/Latihan/Latihan1/services/services.dart';

import '../model/postmodel.dart';

class AppController extends GetxController {
  var getposts = <Postmodel>[].obs;
  Services services = Services();
  var postloading = true.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    callpostmethod();
    super.onInit();
  }

  callpostmethod() async {
    try {
      postloading.value = true;
      var result = await services.getallposts();
      if (result != null) {
        getposts.assignAll(result);
      } else {
        print('null');
      }
    } finally {
      postloading.value = false;
    }
    update();
  }
}

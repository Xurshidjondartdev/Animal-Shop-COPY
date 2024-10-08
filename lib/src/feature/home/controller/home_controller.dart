import "dart:developer";

import "package:flutter/widgets.dart";
import "../../../core/data/repostory/app_repostory_implementation.dart";
import "../../../models/get_post_model.dart";

class HomeController extends ChangeNotifier {
  HomeController() {
    getPostAll();
  }
  TextEditingController searchController = TextEditingController();
  bool isLoading=true;
  List<GetPostModel>? getPostModel;
  Future<void> getPostAll() async {
    isLoading=true;
    log("GetPostModel ");
    final result = await AppRepositoryImpl().getPostAll();
    if (result != null) {
      log("Controller GetPostModel ");
      getPostModel = result; //xato beryapti
      isLoading=false;
    }
    notifyListeners();
  }
}

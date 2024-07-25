import "dart:developer";

import "package:flutter/widgets.dart";

import "../../../core/data/repostory/app_repostory_implementation.dart";
import "../../../models/post_model.dart";

class HomeController extends ChangeNotifier {
  HomeController() {
    getPostAll();
  }
  TextEditingController searchController = TextEditingController();

  PostModel? postModel;
  Future<void> getPostAll() async {
    final result = await AppRepositoryImpl().getPostAll();
    log("message  $result");
    if (result != null) {
      log(" log log :${postModel?.content?.first.animal?.isDeleted}");
      postModel = postModelFromJson(result);
      log(" postModel -----${postModel?.content?.first.animal}");
      notifyListeners();
    }
  }
}

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

import "../../../core/api/api.dart";
import "../../../core/data/repostory/app_repostory_implementation.dart";
import "../../../models/user_model.dart";
import "../profile_model.dart";

class ProfileController extends ChangeNotifier {
  ProfileController() {
    getUserInfo();
  }
  TextEditingController firstC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  // TextEditingController numberC = TextEditingController();
  TextEditingController lastC = TextEditingController();
  UserModel? userModel;
  Future<void> getUserInfo() async {
    final result = await AppRepositoryImpl().getUserInfo();
    if (result != null) {
      userModel = userModelFromJson(result);
      firstC.text = "${userModel!.firstName}";
      lastC.text = "${userModel!.lastName}";
      emailC.text = "${userModel!.email}";
      // numberC.text = "${userModel!.phone}";
      notifyListeners();
    }
  }

  @override
  void dispose() {
    super.dispose();
    firstC.dispose();
    lastC.dispose();
    emailC.dispose();
    // numberC.dispose();
  }

  Future<void> updateUser(User user) async {
    final response = await Api.PUT(Api.apiPostRegister, user.toJson(), Api.emptyParams());
    if (response != null) {
      notifyListeners();
    } else {
      throw Exception("Failed to update user");
    }
  }
}

import "package:flutter/cupertino.dart";

import "../../../core/data/repostory/app_repostory_implementation.dart";
import "../../../models/user_model.dart";

class ProfileController extends ChangeNotifier{
  ProfileController(){
    getUserInfo();
  }
  UserModel? userModel;
  Future<void> getUserInfo()async{
    final result = await AppRepositoryImpl().getUserInfo();
    if(result != null){
      userModel = userModelFromJson(result);
      notifyListeners();
    }
  }



}

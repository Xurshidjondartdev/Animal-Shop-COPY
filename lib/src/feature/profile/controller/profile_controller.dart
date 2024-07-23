import "package:flutter/cupertino.dart";

import "../../../core/data/repostory/app_repostory_implementation.dart";
import "../../../models/user_model.dart";

class ProfileController extends ChangeNotifier{
  ProfileController(){
    getUserInfo();
  }
  Future<UserModel?> getUserInfo()async{
    final result = await AppRepositoryImpl().getUserInfo();
    if(result != null){
      final UserModel userModel = userModelFromJson(result);
      return userModel;
    }
    return null;
  }



}

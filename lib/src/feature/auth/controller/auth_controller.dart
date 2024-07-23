import "dart:developer";

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:shared_preferences/shared_preferences.dart";

import "../../../core/data/repostory/app_repostory_implementation.dart";
import "../../../core/localization/words.dart";
import "../../../core/routes/app_route_name.dart";
import "../../../core/utils/utils.dart";

class AuthController with ChangeNotifier {
  bool isObscure = false;
  bool isCheck = false;
  bool secondIsCheck = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmingController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();
  String? selectedLanguage = "English";

  Future<void> authUser({
    required BuildContext context,
    required String firsName,
    required String lastName,
    required String password,
    required String email,
    required String rePassword,
  }) async {
    final result = await AppRepositoryImpl().authUser(
      firsName: firsName,
      lastName: lastName,
      password: password,
      email: email,
      rePassword: rePassword,
    );
    log("Result:  $result");
    log("sorov ketti");
    if (result != null) {
      log("sorov keldi !!!");
      if (context.mounted) {
        context.goNamed(AppRouteName.sendCodePage);
      }
    } else {
      if (context.mounted) {
        Utils.fireSnackBar(
          "Error berdi",
          context,
        );
      }
    }
  }

  Future<void> checkPincode({
    required BuildContext context,
    required String pincode,
  }) async {
    final result = await AppRepositoryImpl().checkPincode(
      pincode: pincode,
    );
    log("$result");
    if (result != null) {
      if (context.mounted) {
        context.goNamed(AppRouteName.loginPage);
        Utils.fireSnackBar(
          Words.createdSuccessfully.tr(context),
          context,
        );
        context.goNamed(
          AppRouteName.loginPage,
        );
      }
      debugPrint("<<<<<<<<<<<<<$result>>>>>>>>>>>>>");
    } else {
      if (context.mounted) {
        Utils.fireSnackBar(
          Words.PinCodeXatoQaytadanUriningKoring.tr(context),
          context,
        );
      }
    }
  }

  void changeLanguage(String newLanguage) {
    selectedLanguage = newLanguage;
    notifyListeners();
  }

  void changeVisibility(bool value) {
    isObscure = value;
    notifyListeners();
  }

  void checking(bool value) {
    isCheck = value;
    notifyListeners();
  }

  void checkingTwo(bool value) {
    secondIsCheck = value;
    notifyListeners();
  }

  void controllerName(String str) {
    nameController.text = str;
    notifyListeners();
  }

  void controllerLastName(String str) {
    lastNameController.text = str;
    notifyListeners();
  }

  void controllerPassword(String str) {
    passwordController.text = str;
    notifyListeners();
  }

  void controllerConfirming(String str) {
    confirmingController.text = str;
    notifyListeners();
  }

  void controllerEmail(String str) {
    emailController.text = str;
    notifyListeners();
  }

  Future<void> chnageSelectedLanguage() async {
    await SharedPreferences.getInstance().then<void>((SharedPreferences sp) {
      selectedLanguage = sp.getString("app_local");
      debugPrint("<<<<<<<<<<<$selectedLanguage>>>>>>>>");
      notifyListeners();
    });
  }
}

import "dart:developer";
import "package:flutter/cupertino.dart";
import "../../../../setup.dart";
import "../../api/api.dart";
import "../../storage/app_storage.dart";
import "app_repostory.dart";

@immutable
final class AppRepositoryImpl implements AppRepository {
  factory AppRepositoryImpl() => _impl;

  const AppRepositoryImpl._internal();

  static const AppRepositoryImpl _impl = AppRepositoryImpl._internal();

  @override
  Future<String?> authUser({
    required String firsName,
    required String lastName,
    required String email,
    required String password,
    required String rePassword,
  }) async {
    log(firsName);
    log(lastName);
    log(email);
    log(password);
    log(rePassword);

    final result = await Api.POST(
      api: Api.apiPostRegister,
      body: {
        "firstName": firsName,
        "lastName": lastName,
        "email": email,
        "password": password,
        "rePassword": rePassword,
      },
    );
    log("result impl   $result");
    if (result != null) {
      await UserStorage.store(key: StorageKey.token, value: result);
      token = result;
      return result;
    } else {
      return null;
    }
  }

  @override
  Future<String?> checkPincode({
    required String pincode,
  }) async {
    final result = await Api.POST(
      api: Api.apiCheckPassword,
      body: {
        "code": pincode,
      },
    );
    if (result != null) {
      log("<<<<<<<<<<<<<<<<<<<<<<<<<<$result>>>>>>>>>>>>>>>>>>>>>>>>>");
      return result;
    } else {
      return null;
    }
  }

  @override
  Future<String?> loginUser({
    required String email,
    required String password,
  }) async {
    final result = await Api.POST(
      api: Api.apiLogin,
      body: {
        "email": email,
        "password": password,
      },
    );
    log("loginga keldi");
    if (result != null) {
      log("login qildi");
      await UserStorage.store(key: StorageKey.token, value: result);
      token = result;
      return result;
    } else {
      return null;
    }
  }

  @override
  Future<String?> getUserInfo() async {
    final result = await Api.GET(
      api: Api.apiLogin,
    );
    log("profile");
    if (result != null) {
      log("profile malumotlari keldi");
      return result;
    } else {
      log("profile kelmadi");
      return null;
    }
  }

  @override
  Future<String?> getPostAll() async {
    final result = await Api.GET(params: Api.paramGetPostAll(),
      api: Api.apiGetPostAll,
    );
    log("post");
    if (result != null) {
      log("post malumotlari keldi  $result");
      return result;
    } else {
      return null;
    }
  }

  // @override
  // Future<String?> postProduct({
  //   required String userId,
  //   required String description,
  //   required String title,
  //   required String phone,
  //   required String animalName,
  //   required String categoryId,
  //   required String gender,
  //   required List<String> images,
  // }) async {
  //   final result = await Api.POST(
  //     api: Api.postProduct,
  //     body: {},
  //     param: {},
  //   );
  // }
}

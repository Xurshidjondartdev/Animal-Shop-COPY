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
      log("token1: $token");
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
    log("token2 $token");

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
    log("login user");
    if (result != null) {
      log(" login qildi");
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
    log("login user");
    if (result != null) {
      log(" login qildi");
      await UserStorage.store(key: StorageKey.token, value: result);
      token = result;
      return result;
    } else {
      return null;
    }
  }
}

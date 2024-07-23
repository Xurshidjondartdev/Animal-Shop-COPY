// To parse this JSON data, do
//
//     final authUserModel = authUserModelFromJson(jsonString);

import "dart:convert";

AuthUserModel authUserModelFromJson(String str) => AuthUserModel.fromJson(json.decode(str));

String authUserModelToJson(AuthUserModel data) => json.encode(data.toJson());

class AuthUserModel {

    AuthUserModel({
        this.firstName,
        this.lastName,
        this.email,
        this.password,
        this.rePassword,
    });

    factory AuthUserModel.fromJson(Map<String, dynamic> json) => AuthUserModel(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        password: json["password"],
        rePassword: json["rePassword"],
    );
    String? firstName;
    String? lastName;
    String? email;
    String? password;
    String? rePassword;

    Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "password": password,
        "rePassword": rePassword,
    };
}

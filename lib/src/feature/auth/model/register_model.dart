import "dart:convert";

RegisterModel registerModelFromJson(String str) =>
    RegisterModel.fromJson(json.decode(str));

String registerModelToJson(RegisterModel data) => json.encode(data.toJson());

class RegisterModel {

  RegisterModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        password: json["password"],
      );
  String firstName;
  String lastName;
  String email;
  String password;

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "password": password,
      };
}

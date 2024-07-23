import "dart:convert";

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());


class UserModel {
  UserModel({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.region,
    this.roles,
    this.isDeleted,
    this.createdAt,
    this.imagePath,
    this.username,
    this.authorities,
    this.enabled,
    this.accountNonLocked,
    this.accountNonExpired,
    this.credentialsNonExpired,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        phone: json["phone"],
        region: json["region"],
        roles: json["roles"] == null
            ? []
            : List<Authority>.from(
                json["roles"]!.map((x) => Authority.fromJson(x)),
              ),
        isDeleted: json["isDeleted"],
        createdAt: json["createdAt"],
        imagePath: json["imagePath"],
        username: json["username"],
        authorities: json["authorities"] == null
            ? []
            : List<Authority>.from(
                json["authorities"]!.map((x) => Authority.fromJson(x)),
              ),
        enabled: json["enabled"],
        accountNonLocked: json["accountNonLocked"],
        accountNonExpired: json["accountNonExpired"],
        credentialsNonExpired: json["credentialsNonExpired"],
      );
  final dynamic id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final dynamic phone;
  final dynamic region;
  final List<Authority>? roles;
  final bool? isDeleted;
  final dynamic createdAt;
  final dynamic imagePath;
  final String? username;
  final List<Authority>? authorities;
  final bool? enabled;
  final bool? accountNonLocked;
  final bool? accountNonExpired;
  final bool? credentialsNonExpired;

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phone": phone,
        "region": region,
        "roles": roles == null
            ? []
            : List<dynamic>.from(roles!.map((x) => x.toJson())),
        "isDeleted": isDeleted,
        "createdAt": createdAt,
        "imagePath": imagePath,
        "username": username,
        "authorities": authorities == null
            ? []
            : List<dynamic>.from(authorities!.map((x) => x.toJson())),
        "enabled": enabled,
        "accountNonLocked": accountNonLocked,
        "accountNonExpired": accountNonExpired,
        "credentialsNonExpired": credentialsNonExpired,
      };
}

class Authority {
  Authority({
    this.id,
    this.name,
    this.authority,
  });

  factory Authority.fromJson(Map<String, dynamic> json) => Authority(
        id: json["id"],
        name: json["name"],
        authority: json["authority"],
      );
  final int? id;
  final String? name;
  final String? authority;

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "authority": authority,
      };
}

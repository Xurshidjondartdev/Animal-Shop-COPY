// To parse this JSON data, do
//
//     final getPostModel = getPostModelFromJson(jsonString);

import "dart:convert";

List<GetPostModel> getPostModelFromJson(String str) =>
    List<GetPostModel>.from(json.decode(str).map((x) => GetPostModel.fromJson(x)));

String getPostModelToJson(List<GetPostModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GetPostModel {
  GetPostModel({
    this.id,
    this.isDeleted,
    this.createdAt,
    this.title,
    this.description,
    this.phone,
    this.animal,
    this.user,
    this.imagesUrls,
  });

  factory GetPostModel.fromJson(Map<String, dynamic> json) => GetPostModel(
        id: json["id"],
        isDeleted: json["isDeleted"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        title: json["title"],
        description: json["description"],
        phone: json["phone"],
        animal: json["animal"] == null ? null : Animal.fromJson(json["animal"]),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        imagesUrls: json["imagesUrls"] == null ? [] : List<String>.from(json["imagesUrls"]!.map((x) => x)),
      );
  final String? id;
  final bool? isDeleted;
  final DateTime? createdAt;
  final String? title;
  final String? description;
  final String? phone;
  final Animal? animal;
  final User? user;
  final List<String>? imagesUrls;

  GetPostModel copyWith({
    String? id,
    bool? isDeleted,
    DateTime? createdAt,
    String? title,
    String? description,
    String? phone,
    Animal? animal,
    User? user,
    List<String>? imagesUrls,
  }) =>
      GetPostModel(
        id: id ?? this.id,
        isDeleted: isDeleted ?? this.isDeleted,
        createdAt: createdAt ?? this.createdAt,
        title: title ?? this.title,
        description: description ?? this.description,
        phone: phone ?? this.phone,
        animal: animal ?? this.animal,
        user: user ?? this.user,
        imagesUrls: imagesUrls ?? this.imagesUrls,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "isDeleted": isDeleted,
        "createdAt": createdAt?.toIso8601String(),
        "title": title,
        "description": description,
        "phone": phone,
        "animal": animal?.toJson(),
        "user": user?.toJson(),
        "imagesUrls": imagesUrls == null ? [] : List<dynamic>.from(imagesUrls!.map((x) => x)),
      };
}

class Animal {
  Animal({
    this.id,
    this.isDeleted,
    this.createdAt,
    this.name,
    this.category,
    this.gander,
  });

  factory Animal.fromJson(Map<String, dynamic> json) => Animal(
        id: json["id"],
        isDeleted: json["isDeleted"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        name: json["name"],
        category: json["category"] == null ? null : Category.fromJson(json["category"]),
        gander: json["gander"],
      );
  final String? id;
  final bool? isDeleted;
  final DateTime? createdAt;
  final String? name;
  final Category? category;
  final String? gander;

  Animal copyWith({
    String? id,
    bool? isDeleted,
    DateTime? createdAt,
    String? name,
    Category? category,
    String? gander,
  }) =>
      Animal(
        id: id ?? this.id,
        isDeleted: isDeleted ?? this.isDeleted,
        createdAt: createdAt ?? this.createdAt,
        name: name ?? this.name,
        category: category ?? this.category,
        gander: gander ?? this.gander,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "isDeleted": isDeleted,
        "createdAt": createdAt?.toIso8601String(),
        "name": name,
        "category": category?.toJson(),
        "gander": gander,
      };
}

class Category {
  Category({
    this.id,
    this.isDeleted,
    this.createdAt,
    this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        isDeleted: json["isDeleted"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        name: json["name"],
      );
  final String? id;
  final bool? isDeleted;
  final DateTime? createdAt;
  final String? name;

  Category copyWith({
    String? id,
    bool? isDeleted,
    DateTime? createdAt,
    String? name,
  }) =>
      Category(
        id: id ?? this.id,
        isDeleted: isDeleted ?? this.isDeleted,
        createdAt: createdAt ?? this.createdAt,
        name: name ?? this.name,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "isDeleted": isDeleted,
        "createdAt": createdAt?.toIso8601String(),
        "name": name,
      };
}

class User {
  User({
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
    this.credentialsNonExpired,
    this.accountNonExpired,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        phone: json["phone"],
        region: json["region"],
        roles: json["roles"] == null
            ? []
            : List<Authority>.from(json["roles"]!.map((x) => Authority.fromJson(x))),
        isDeleted: json["isDeleted"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        imagePath: json["imagePath"],
        username: json["username"],
        authorities: json["authorities"] == null
            ? []
            : List<Authority>.from(json["authorities"]!.map((x) => Authority.fromJson(x))),
        enabled: json["enabled"],
        accountNonLocked: json["accountNonLocked"],
        credentialsNonExpired: json["credentialsNonExpired"],
        accountNonExpired: json["accountNonExpired"],
      );
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final dynamic phone;
  final dynamic region;
  final List<Authority>? roles;
  final bool? isDeleted;
  final DateTime? createdAt;
  final dynamic imagePath;
  final String? username;
  final List<Authority>? authorities;
  final bool? enabled;
  final bool? accountNonLocked;
  final bool? credentialsNonExpired;
  final bool? accountNonExpired;

  User copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    dynamic phone,
    dynamic region,
    List<Authority>? roles,
    bool? isDeleted,
    DateTime? createdAt,
    dynamic imagePath,
    String? username,
    List<Authority>? authorities,
    bool? enabled,
    bool? accountNonLocked,
    bool? credentialsNonExpired,
    bool? accountNonExpired,
  }) =>
      User(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        region: region ?? this.region,
        roles: roles ?? this.roles,
        isDeleted: isDeleted ?? this.isDeleted,
        createdAt: createdAt ?? this.createdAt,
        imagePath: imagePath ?? this.imagePath,
        username: username ?? this.username,
        authorities: authorities ?? this.authorities,
        enabled: enabled ?? this.enabled,
        accountNonLocked: accountNonLocked ?? this.accountNonLocked,
        credentialsNonExpired: credentialsNonExpired ?? this.credentialsNonExpired,
        accountNonExpired: accountNonExpired ?? this.accountNonExpired,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phone": phone,
        "region": region,
        "roles": roles == null ? [] : List<dynamic>.from(roles!.map((x) => x.toJson())),
        "isDeleted": isDeleted,
        "createdAt": createdAt?.toIso8601String(),
        "imagePath": imagePath,
        "username": username,
        "authorities": authorities == null ? [] : List<dynamic>.from(authorities!.map((x) => x.toJson())),
        "enabled": enabled,
        "accountNonLocked": accountNonLocked,
        "credentialsNonExpired": credentialsNonExpired,
        "accountNonExpired": accountNonExpired,
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

  Authority copyWith({
    int? id,
    String? name,
    String? authority,
  }) =>
      Authority(
        id: id ?? this.id,
        name: name ?? this.name,
        authority: authority ?? this.authority,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "authority": authority,
      };
}

import "dart:convert";

PostProduct postProductFromJson(String str) => PostProduct.fromJson(json.decode(str));

String postProductToJson(PostProduct data) => json.encode(data.toJson());

class PostProduct {

  PostProduct({
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

  factory PostProduct.fromJson(Map<String, dynamic> json) => PostProduct(
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
  String? id;
  bool? isDeleted;
  DateTime? createdAt;
  String? title;
  String? description;
  String? phone;
  Animal? animal;
  User? user;
  List<String>? imagesUrls;

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
  String? id;
  bool? isDeleted;
  DateTime? createdAt;
  String? name;
  Category? category;
  String? gander;

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
  String? id;
  bool? isDeleted;
  DateTime? createdAt;
  String? name;

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
    this.credentialsNonExpired,
    this.accountNonExpired,
    this.accountNonLocked,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    email: json["email"],
    phone: json["phone"],
    region: json["region"],
    roles: json["roles"] == null ? [] : List<Authority>.from(json["roles"]!.map((x) => Authority.fromJson(x))),
    isDeleted: json["isDeleted"],
    createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
    imagePath: json["imagePath"],
    username: json["username"],
    authorities: json["authorities"] == null ? [] : List<Authority>.from(json["authorities"]!.map((x) => Authority.fromJson(x))),
    enabled: json["enabled"],
    credentialsNonExpired: json["credentialsNonExpired"],
    accountNonExpired: json["accountNonExpired"],
    accountNonLocked: json["accountNonLocked"],
  );
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  dynamic phone;
  dynamic region;
  List<Authority>? roles;
  bool? isDeleted;
  DateTime? createdAt;
  dynamic imagePath;
  String? username;
  List<Authority>? authorities;
  bool? enabled;
  bool? credentialsNonExpired;
  bool? accountNonExpired;
  bool? accountNonLocked;

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
    "credentialsNonExpired": credentialsNonExpired,
    "accountNonExpired": accountNonExpired,
    "accountNonLocked": accountNonLocked,
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
  int? id;
  String? name;
  String? authority;

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "authority": authority,
  };
}

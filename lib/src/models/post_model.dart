import "dart:convert";

PostModel postModelFromJson(String str) => PostModel.fromJson(json.decode(str));

String postModelToJson(PostModel data) => json.encode(data.toJson());

class PostModel {
  PostModel({
    this.totalPages,
    this.totalElements,
    this.size,
    this.content,
    this.number,
    this.sort,
    this.first,
    this.last,
    this.numberOfElements,
    this.pageable,
    this.empty,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        totalPages: json["totalPages"],
        totalElements: json["totalElements"],
        size: json["size"],
        content: json["content"] == null
            ? []
            : List<Content>.from(
                json["content"]!.map((x) => Content.fromJson(x)),
              ),
        number: json["number"],
        sort: json["sort"] == null ? null : Sort.fromJson(json["sort"]),
        first: json["first"],
        last: json["last"],
        numberOfElements: json["numberOfElements"],
        pageable: json["pageable"] == null
            ? null
            : Pageable.fromJson(json["pageable"]),
        empty: json["empty"],
      );
  int? totalPages;
  int? totalElements;
  int? size;
  List<Content>? content;
  int? number;
  Sort? sort;
  bool? first;
  bool? last;
  int? numberOfElements;
  Pageable? pageable;
  bool? empty;

  Map<String, dynamic> toJson() => {
        "totalPages": totalPages,
        "totalElements": totalElements,
        "size": size,
        "content": content == null
            ? []
            : List<dynamic>.from(content!.map((x) => x.toJson())),
        "number": number,
        "sort": sort?.toJson(),
        "first": first,
        "last": last,
        "numberOfElements": numberOfElements,
        "pageable": pageable?.toJson(),
        "empty": empty,
      };
}

class Content {
  Content({
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

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        id: json["id"],
        isDeleted: json["isDeleted"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        title: json["title"],
        description: json["description"],
        phone: json["phone"],
        animal: json["animal"] == null ? null : Animal.fromJson(json["animal"]),
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        imagesUrls: json["imagesUrls"] == null
            ? []
            : List<String>.from(json["imagesUrls"]!.map((x) => x)),
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
        "imagesUrls": imagesUrls == null
            ? []
            : List<dynamic>.from(imagesUrls!.map((x) => x)),
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
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        name: json["name"],
        category: json["category"] == null
            ? null
            : Category.fromJson(json["category"]),
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
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
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
    this.accountNonLocked,
    this.accountNonExpired,
    this.credentialsNonExpired,
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
            : List<Authority>.from(
                json["roles"]!.map((x) => Authority.fromJson(x)),
              ),
        isDeleted: json["isDeleted"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
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
  bool? accountNonLocked;
  bool? accountNonExpired;
  bool? credentialsNonExpired;

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
        "createdAt": createdAt?.toIso8601String(),
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
  int? id;
  String? name;
  String? authority;

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "authority": authority,
      };
}

class Pageable {
  Pageable({
    this.pageNumber,
    this.pageSize,
    this.sort,
    this.offset,
    this.paged,
    this.unpaged,
  });

  factory Pageable.fromJson(Map<String, dynamic> json) => Pageable(
        pageNumber: json["pageNumber"],
        pageSize: json["pageSize"],
        sort: json["sort"] == null ? null : Sort.fromJson(json["sort"]),
        offset: json["offset"],
        paged: json["paged"],
        unpaged: json["unpaged"],
      );
  int? pageNumber;
  int? pageSize;
  Sort? sort;
  int? offset;
  bool? paged;
  bool? unpaged;

  Map<String, dynamic> toJson() => {
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "sort": sort?.toJson(),
        "offset": offset,
        "paged": paged,
        "unpaged": unpaged,
      };
}

class Sort {
  Sort({
    this.empty,
    this.sorted,
    this.unsorted,
  });

  factory Sort.fromJson(Map<String, dynamic> json) => Sort(
        empty: json["empty"],
        sorted: json["sorted"],
        unsorted: json["unsorted"],
      );
  bool? empty;
  bool? sorted;
  bool? unsorted;

  Map<String, dynamic> toJson() => {
        "empty": empty,
        "sorted": sorted,
        "unsorted": unsorted,
      };
}

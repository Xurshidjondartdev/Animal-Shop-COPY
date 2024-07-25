class User {
  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.image,
  });
  final String firstName;
  final String lastName;
  final String email;
  final String image;

  Map<String, dynamic> toJson() {
    return {
      "userDto": {
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
      },
      "image": image,
    };
  }
}

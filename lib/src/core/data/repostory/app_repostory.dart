abstract class AppRepository {
  Future<String?> authUser({
    required String firsName,
    required String lastName,
    required String email,
    required String password,
    required String rePassword,
  });

  Future<String?> checkPincode({
    required String pincode,
  });

  Future<String?> loginUser({
    required String email,
    required String password,
  });

  Future<String?> getUserInfo();

  // Future<String?> postProduct({
  //   required String userId,
  //   required String description,
  //   required String title,
  //   required String phone,
  //   required String animalName,
  //   required String categoryId,
  //   required String gender,
  //   required List<String> images,
  // });
}

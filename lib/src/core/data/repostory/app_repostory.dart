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
}

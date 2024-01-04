class Url {
  static const String _baseUrl = 'https://craftybay.teamrabbil.com/api';
  static String verifyEmail(String email) => '$_baseUrl/UserLogin/$email';
  static String verifyotp(String email, String otp) =>
      '$_baseUrl/VerifyLogin/$email/$otp';
}

import 'package:shared_preferences/shared_preferences.dart';

class AuthController{
  static String? _accessToken;

  String? get accessToken => _accessToken;

   static Future<void> setAccessToken(String token) async{
   final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
   await sharedPreferences.setString('access_token', token);
   _accessToken = token;
  }

  static Future<void> getAccessToken() async{
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    _accessToken= await sharedPreferences.getString('access_token');
  }
// sob static kora cz instance protiber r create na hok tai
 static bool get isLoggedIn{
    return _accessToken != null;
  }
}
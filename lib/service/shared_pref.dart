import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  static String userIdKey = "USERKEY";
  static String userNameKey = "USERNAMEKEY";
  static String userEmailKey = "USEREMAILKEY";
  static String userWalletKey = "USERWALLETKEY";

  Future<bool> saveUserId(String gatUserId){
    SharedPreferences prefs= await SharedPreferences.getInstance();
    return prefs.setString(userIdKey, getUserId);
  }
  Future<bool> saveUserName(String gatUserName){
    SharedPreferences prefs= await SharedPreferences.getInstance();
    return prefs.setString(userNameKey, getUserName);
  }
  Future<bool> saveUserEmail(String gatUserEmail){
    SharedPreferences prefs= await SharedPreferences.getInstance();
    return prefs.setString(userEmailKey, getUserEmail);
  }
  Future<bool> saveUserWallet(String gatUserWallet){
    SharedPreferences prefs= await SharedPreferences.getInstance();
    return prefs.setString(userWalletKey, getUserWallet);
  }
  Future<String?> getUserId()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.getString(userIdKey);
  }
  Future<String?> getUserName()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.getString(userNameKey);
  }
  Future<String?> getUserEmail()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.getString(userEmailKey);
  }
  Future<String?> getUserWallet()async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    return prefs.getString(userWalletKey);
  }
}

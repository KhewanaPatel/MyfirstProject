import 'package:shared_preferences/shared_preferences.dart';

class InfoPage{
  static late String name="NAME";
  static late String password="PASSWORD";

  static Future<bool> user(bool value)async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setBool(name,value);
  }

  static Future<bool> pass(bool value)async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setBool(password,value);
  }

}
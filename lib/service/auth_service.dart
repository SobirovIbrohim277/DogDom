import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:imtihon/model/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  late String ipAdressReg;
  late String ipAdressUsers;
  late String ipAdressLogin;

  Future signUp(User user) async {
    try {
      Response res = await Dio().post(ipAdressReg, data: user.toJson());
      if (res.statusCode == 200) {
        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setBool('isLogged', true);
        await pref.setString('profile', res.data.toString());
        return res.statusCode.toString();
      }
      return res.statusCode.toString();
    } catch (err) {
      return 'auth service: $err';
    }
  }

  Future<User> fetchUserData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    Map<String, dynamic> userMap =
        jsonDecode(pref.getString('profile').toString());
    User user = User.fromJson(userMap);
    print(userMap);
    return user;
  }

  Future signIn(User user) async {
    try {
      Response res = await Dio().post(ipAdressLogin, data: user.toJson());
      if (res.statusCode == 200) {
        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setBool('isLogged', true);
        await pref.setString('profile', res.data.toString());
        return res.statusCode.toString();
      }
      return res.statusCode.toString();
    } catch (err) {
      return 'auth service: $err';
    }
  }

  Future logOut() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove('profile');
    pref.setBool('isLogged', false);
  }

  Future<List<User>> getAllUsers() async {
    try {
      Response res = await Dio().get(ipAdressUsers);
      return (res.data as List).map((e) => User.fromJson(e)).toList();
    } catch (err) {
      rethrow;
    }
  }
}

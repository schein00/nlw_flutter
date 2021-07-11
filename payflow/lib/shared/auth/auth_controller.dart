import 'package:flutter/cupertino.dart';
import 'package:payflow/shared/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  UserModel? _user;

  UserModel get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    if (user != null) {
      _user = user;
      saveUser(user);
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  Future<void> saveUser(UserModel user) async {
    final _instance = await SharedPreferences.getInstance();
    await _instance.setString('user', user.toJson());
    return;
  }

  Future<void> currentUser(BuildContext context) async {
    UserModel? user;
    await Future.delayed(Duration(seconds: 2));
    final _instance = await SharedPreferences.getInstance();
    if (_instance.containsKey('user'))
      user = UserModel.fromJson(_instance.get('user') as String);
    setUser(context, user);
    return;
  }
}

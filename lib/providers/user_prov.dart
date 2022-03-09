import 'package:flutter/material.dart';
import 'package:instagram_clone/models/user.dart';
import 'package:instagram_clone/resources/auth_meth.dart';

class UserProvider with ChangeNotifier {
  User? _user;
  final AuthMethode _autoMethods = AuthMethode();
   
  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _autoMethods.getUserDetail();
    _user = user;
    notifyListeners();
  }
}
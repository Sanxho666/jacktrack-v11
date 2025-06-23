import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AppStateProvider extends ChangeNotifier {
  User? user;

  void updateUser(User? newUser) {
    user = newUser;
    notifyListeners();
  }
}
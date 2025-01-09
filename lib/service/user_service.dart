import 'dart:convert';
import 'package:flutter/services.dart';

class UserService {
  Future<List<Map<String, String>>> loadUsers() async {
    final String response = await rootBundle.loadString('assets/users.json');
    final List<dynamic> data = json.decode(response);
    return data.map((item) => Map<String, String>.from(item)).toList();
  }

  Future<bool> validateUser(String email, String password) async {
    final users = await loadUsers();
    for (var user in users) {
      if (user['email'] == email && user['password'] == password) {
        return true;
      }
    }
    return false;
  }
}
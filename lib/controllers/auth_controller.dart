import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http; // أضف as http

import '../constant.dart';
class AuthController extends GetxController {
  Future<void> login({required String username, required String password})
  async {
    final response = await http.post(
        Uri.parse(loginUrl),
        headers: {
          "Content-Type": "application/json"
        },
        body: jsonEncode({
          "username": username,
          "password": password
        })
    );

    if(response.statusCode == 200) {
      final res = jsonDecode(response.body);
      if(res['message'] == "welcome") {
        print("welcome");

      } else {
        print("error: ${res['message']}");
        Get.snackbar("خطأ", "اسم المستخدم أو كلمة المرور غير صحيحة");
      }
    } else {
      print("HTTP error: ${response.statusCode}");
      Get.snackbar("خطأ", "فشل الاتصال بالخادم");
    }
  }
  Future<void> register({required String username, required String password , required String fullname, required String city, required String address})
  async {
    final response = await http.post(
        Uri.parse(registerUrl),
        headers: {
          "Content-Type": "application/json"
        },
        body: jsonEncode({
          "username": username,
          "password": password,
          "fullname": fullname,
          "city": city,
          "address": address
        })
    );

    if(response.statusCode == 200) {
      final res = jsonDecode(response.body);
      if(res['message'] == "welcome") {
        print("welcome");

      } else {
        print("error: ${res['message']}");
        Get.snackbar("خطأ", "اسم المستخدم أو كلمة المرور غير صحيحة");
      }
    } else {
      print("HTTP error: ${response.statusCode}");
      Get.snackbar("خطأ", "فشل الاتصال بالخادم");
    }
  }

}
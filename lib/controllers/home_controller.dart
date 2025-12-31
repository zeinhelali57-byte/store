import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:store2025/constant.dart';
import 'package:store2025/layout/auth/login.dart';

class HomeController extends GetxController
{ late SharedPreferences pref ;
  String token="";
  String result="";
  @override
  Future<void> onInit() async {
    // TODO: implement onInit
    super.onInit();
      await checkLogin();
      kza();
    }


  Future<void> kza()
  async {
    pref=await SharedPreferences.getInstance();
    final response= await http.get(Uri.parse(kzaUrl),
      headers: {
        "Content-Type": "application/json",
        "Authorization":token
      }

    );
     if(response.statusCode==200)
       {
        result=jsonDecode(response.body).toString();
       }
     else
       {
         result= "error";
       }
     update();
  }

  checkLogin() async {
    SharedPreferences pref=await SharedPreferences.getInstance();
     token=pref.getString("token")??"-";
     if(token=="-"){


       Get.to(Login());
     }
  }

}
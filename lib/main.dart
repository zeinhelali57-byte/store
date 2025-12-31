import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store2025/layout/auth/home_page.dart';
import 'layout/auth/login.dart';
void main()
{
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:HomePage() ,
    );
  }
}

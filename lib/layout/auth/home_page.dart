import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:store2025/controllers/home_controller.dart';
class HomePage extends StatelessWidget {
   HomePage({super.key});
 HomeController homeController=Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(),
      body: GetBuilder<HomeController>(builder: (_)=>Text(homeController.result), )


    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store2025/controllers/auth_controller.dart';
import 'package:store2025/layout/auth/register.dart';
class Login extends StatelessWidget {

   Login({super.key});
   TextEditingController fUsername=TextEditingController();
   TextEditingController fPassword=TextEditingController();
   final AuthController authController=Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login'),),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your mobile'
            ),
          controller:fUsername ,
          keyboardType: TextInputType.phone,

          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your password'
            ),
          controller:fPassword ,
          keyboardType: TextInputType.visiblePassword,

          ),
          ElevatedButton(onPressed:(){authController.login(username:fUsername.text,password: fPassword.text);},child: Text('login ')),
          ElevatedButton(onPressed: (){
            Get.to(Register());
          },child: Text('creat new account')),

        ],

      ),
    );
  }
}

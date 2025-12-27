import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/auth_controller.dart';
class Register extends StatelessWidget {
   Register({super.key});
   TextEditingController fUsername=TextEditingController();
   TextEditingController fPassword=TextEditingController();
   TextEditingController fFullname=TextEditingController();
   TextEditingController fCity=TextEditingController();
   TextEditingController fAddress=TextEditingController();
   final AuthController authController=Get.put(AuthController());

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('register'),),
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
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your fullname'
            ),
            controller:fFullname ,
            keyboardType: TextInputType.visiblePassword,

          ),
          DropdownButtonFormField<String>(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'اختر المحافظة',
            ),
            value: fCity.text.isEmpty ? null : fCity.text,
            items: [
              'دمشق',
              'ريف دمشق',
              'حلب',
              'حمص',
              'حماة',
              'اللاذقية',
              'طرطوس',
              'إدلب',
              'دير الزور',
              'الرقة',
              'الحسكة',
              'درعا',
              'السويداء',
              'القنيطرة',
            ].map((String city) {
              return DropdownMenuItem<String>(
                value: city,
                child: Text(city),
              );
            }).toList(),
            onChanged: (String? newValue) {
              if (newValue != null) {
                fCity.text = newValue;
              }
            },
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your address'
            ),
            controller:fAddress ,
            keyboardType: TextInputType.visiblePassword,

          ),
          ElevatedButton(onPressed:(){authController.register(username:fUsername.text,password: fPassword.text,fullname: fFullname.text,city: fCity.text,address: fAddress.text);},child: Text('register ')),


        ],

      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:gizi_genius_app_update/widgets/customeSnackBar.dart';

class LoginController extends GetxController {
  final toggleShowPass = false.obs;
  void showPassword() => toggleShowPass.value = !toggleShowPass.value;
  late TextEditingController emailC, passwordC;

  @override
  void onInit() {
    super.onInit();
    emailC = TextEditingController();
    passwordC = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    emailC.dispose();
    passwordC.dispose();
  }

  // void checkFormFieldLogin(){
  //   if (emailC.value.text.isEmpty || passwordC.value.text.isEmpty) {
  //     //show dialog here
  //     return CustomeSnackbar('Notifikasi', 'All fields are required', 'done');

  //   }{
  //     Get.showOverlay(asyncFunction: () => LoginAuthDb(), loadingWidget: CircularProgressIndicator());
  //   }
  // }

  // Future<void> LoginAuthDb() async{
  //   await  Future.delayed(Duration(seconds: 1));
  //   try {
  //     var response = await http.post(
  //     Uri.parse("https://reqres.in/api/users"),
  //     headers: {
  //     "Content-Type": "application/json",
  //     },
  //     body: jsonEncode({
  //     "email": emailC.text,
  //     "password": passwordC.text,
  //     }),
  //     );
  //    print(response.statusCode);
  //   } catch (e) {
  //     print('$e, error when trying to login');
  //   }
  //     }
}

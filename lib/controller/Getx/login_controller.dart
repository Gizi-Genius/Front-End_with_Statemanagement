import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gizi_genius_app_update/config/Server/apiDatabases.dart';
import 'package:gizi_genius_app_update/models/userModels.dart';
import 'package:gizi_genius_app_update/widgets/customeLoader.dart';
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

  void checkFormFieldLogin() {
    if (emailC.value.text.isEmpty || passwordC.value.text.isEmpty) {
      //show dialog here
      return CustomeSnackbar('Notifikasi', 'All fields are required', 'done',const Duration(seconds: 2));
    }
    {
      Get.showOverlay(
          asyncFunction: () => loginAuthDb(), loadingWidget: Loader());
    }
  }

  Future<void> loginAuthDb() async {
    final user = User(email: "email", password: "password");
    try {
      var response = await http.post(
        Uri.parse(Api().login),
        body: {
          user.email: emailC.text,
          user.password: passwordC.text,
        },
      );
      print(response.statusCode);
      if (response.statusCode == 200) {
        var res = json.encode(response.body);
        print(res);
        CustomeSnackbar('Success', 'Login Berhasil', 'success', const Duration(seconds: 2) );
        Get.offAllNamed('/opening');
      }
    } catch (e) {
      print(e);
      CustomeSnackbar('error', 'error when trying to login $e', 'error',const  Duration(seconds: 2));
    }
  }
}

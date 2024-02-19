import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/config/Server/apiDatabases.dart';
import 'package:gizi_genius_app_update/models/userModels.dart';
import 'package:gizi_genius_app_update/widgets/customeLoader.dart';
import 'package:gizi_genius_app_update/widgets/customeSnackBar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final toggleShowPassword = false.obs;
  void showPassword() => toggleShowPassword.value = !toggleShowPassword.value;

  late TextEditingController usernameC, emailC, passwordC;

  @override
  void onInit() {
    super.onInit();
    usernameC = TextEditingController();
    emailC = TextEditingController();
    passwordC = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    usernameC.dispose();
    emailC.dispose();
    passwordC.dispose();
  }

  void checkFormFieldRegister() async {
    if (usernameC.text.isEmpty ||
        emailC.text.isEmpty ||
        passwordC.text.isEmpty) {
      CustomeSnackbar('Error', 'All fields are required', 'error', const Duration(seconds: 2));
      return;
    }
    await Get.showOverlay(
        asyncFunction: () async => await registerAuthDb(),
        loadingWidget: const Loader());
    print('''

${usernameC.text},
${emailC.text}
${passwordC.text}

''');
  }

  Future<void> registerAuthDb() async {
    User user = User(
        username: usernameC.text, email: emailC.text, password: passwordC.text);
    try {
      var response =
          await http.post(Uri.parse(Api().register), body: user.toJson());
      print('${response.statusCode}');
      print('${response.body}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        var res = jsonDecode(response.body); // ubah json ke Objext/Array
        print(res);
        CustomeSnackbar('Success', 'Akun Berhasil di Tambahkan', 'success', const Duration(seconds: 2));
        Get.offAllNamed('/login');
      } else {
        print('Gagal mendaftar: ${response.reasonPhrase}');
        CustomeSnackbar('error',
            'Gagal mendaftar: ${response.body} dan coba lagi', 'error', const Duration(seconds: 2));
      }
    } catch (e) {
      CustomeSnackbar('error', 'Error in $e', 'error', const Duration(seconds: 2));
      print('error in the $e');
    }
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gizi_genius_app_update/controller/Getx/login_controller.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';
import 'package:gizi_genius_app_update/widgets/customeFormField.dart';
import 'package:gizi_genius_app_update/widgets/customeSnackBar.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';
import 'package:icons_plus/icons_plus.dart';
import '../../animations/up.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final loginC = Get.put(LoginController());
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                UpAnimation(
                    delay: 1,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: CustomeText(
                          text: "Login",
                          color: lightColor,
                          size: fSz32,
                          weight: fW700),
                    )),
                const SizedBox(height: 40),
                UpAnimation(
                  delay: 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomeText(text: 'Email', color: lightColor),
                      const SizedBox(height: 4),
                      ContainerFormField(
                          form: CustomeFormField(
                              controller: TextEditingController(),
                              colorIcon: lightColor,
                              icon: Icons.email,
                              obscureText: false))
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                UpAnimation(
                  delay: 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomeText(text: 'Password', color: lightColor),
                      const SizedBox(height: 4),
                      ContainerFormField(
                        form: Obx(() {
                          return CustomeFormField(
                            controller: passController,
                            colorIcon: lightColor,
                            icon: Icons.password_outlined,
                            obscureText: loginC.toggleShowPass.value,
                            suffixIcon: IconButton(
                              onPressed: () => loginC.showPassword(),
                              icon: Icon(loginC.toggleShowPass.value
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              color: lightColor,
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                UpAnimation(
                    delay: 2,
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => OpeningPage()),
                          // );
                          CustomeSnackbar('Done Bang', 'Nggak ada si', 'success');
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                          primary: buttonColor,
                        ),
                        child: Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: CustomeText(
                            size: 14,
                            text: 'Submit',
                            color: lightColor,
                            weight: fW600,
                          ),
                        ),
                      ),
                    )),
                const SizedBox(height: 40),
                UpAnimation(
                  delay: 2,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 12),
                            height: 1,
                            color: Colors.white,
                          ),
                        ),
                        const CustomeText(text: 'Or', color: lightColor),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 12),
                            height: 1,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                UpAnimation(
                  delay: 2,
                  child: InkWell(
                    // onTap: _googleSignIn,
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 56),
                      padding: const EdgeInsets.all(10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: lightColor,
                          border: Border.all(color: Colors.grey)),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Brand(Brands.google),
                          const SizedBox(width: 12),
                          CustomeText(
                            text: 'Login with Google',
                            color: blackColor,
                            weight: fW700,
                          )
                        ],
                      )),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                UpAnimation(
                    delay: 2.5,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: fontUbuntu.copyWith(color: lightColor),
                        children: [
                          const TextSpan(
                            text: "Don't have an account yet? ",
                          ),
                          TextSpan(
                            text: "Register now!",
                            style: fontUbuntu.copyWith(color: buttonColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed('/register');
                              },
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

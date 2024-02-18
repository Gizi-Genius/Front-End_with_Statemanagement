import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gizi_genius_app_update/animations/up.dart';
import 'package:gizi_genius_app_update/controller/Getx/register_controller.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';
import 'package:gizi_genius_app_update/widgets/customeButton.dart';
import 'package:gizi_genius_app_update/widgets/customeFormField.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final registerC = Get.put(RegisterController());

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
              children: [
                UpAnimation(
                  delay: 1,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'Register account\n',
                                style: fontUbuntu.copyWith(
                                    fontSize: 32,
                                    color: lightColor,
                                    fontWeight: fWBold)),
                            const WidgetSpan(
                                child: SizedBox(
                              height: 30,
                            )),
                            TextSpan(
                                text:
                                    'Keen on shedding some pounds, boosting\nenergy, or upgrading your eating habits? With\nclear goals, we can hook you up with spot-on recommendations',
                                style: fontUbuntu.copyWith(
                                  color: greyColor.withOpacity(0.9),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 52),
                UpAnimation(
                  delay: 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomeText(text: 'Name', color: lightColor),
                      const SizedBox(height: 4),
                      ContainerFormField(
                          form: CustomeFormField(
                              controller: registerC.usernameC,
                              colorIcon: lightColor,
                              icon: Icons.person,
                              obscureText: false))
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                UpAnimation(
                  delay: 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomeText(text: 'Email', color: lightColor),
                      const SizedBox(height: 4),
                      ContainerFormField(
                          form: CustomeFormField(
                              controller: registerC.emailC,
                              colorIcon: lightColor,
                              icon: Icons.mail_outline,
                              obscureText: false))
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                UpAnimation(
                  delay: 1.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomeText(text: 'Password', color: lightColor),
                      const SizedBox(height: 4),
                      ContainerFormField(
                          form: Obx(() => CustomeFormField(
                                controller: registerC.passwordC,
                                colorIcon: lightColor,
                                icon: Icons.password,
                                obscureText: registerC.toggleShowPassword.value,
                                suffixIcon: IconButton(
                                  onPressed: () => registerC.showPassword(),
                                  icon: Icon(registerC.toggleShowPassword.value
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  color: lightColor,
                                ),
                              )))
                    ],
                  ),
                ),
                const SizedBox(height: 52),
                UpAnimation(
                    delay: 2,
                    child: SizedBox(
                        height: 50,
                        child: CustomeButton(
                          onpressed: () => registerC.registerAuthDb(),
                          buttonColor: buttonColor,
                          text: 'Submit',
                        ))),
                const SizedBox(height: 40),
                UpAnimation(
                    delay: 2,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: fontUbuntu.copyWith(color: lightColor),
                        children: [
                          const TextSpan(
                            text: "Have an account, ",
                          ),
                          TextSpan(
                            text: "go to login!",
                            style: fontUbuntu.copyWith(color: buttonColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed('/login');
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gizi_genius_app_update/animations/up.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';
import 'package:gizi_genius_app_update/widgets/customeButton.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';

class OpeningPage extends StatelessWidget {
  const OpeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UpAnimation(
              delay: 1,
              child: CustomeText(
                text: 'Bentar, Sebelumn mulau',
                color: lightColor,
                weight: fWBold,
                size: 24,
              ),
            ),
            const SizedBox(height: 8),
            UpAnimation(
              delay: 1.5,
              child: CustomeText(
                  text: 'Lengkapi Profile km dulu yaa :)',
                  color: lightColor.withOpacity(0.8),
                  size: 14),
            ),
            const SizedBox(height: 80),
            UpAnimation(
                delay: 2,
                child: SizedBox(
                  height: 50,
                  child: CustomeButton(
                      onpressed: () => Get.toNamed('/formOpening'),
                      buttonColor: buttonColor,
                      text: 'Oke, Gasken'),
                )),
          ],
        ),
      )),
    );
  }
}

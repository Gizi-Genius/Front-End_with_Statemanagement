import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';

void CustomeSnackbar(title, msg, type, Duration duration) {
  Get.snackbar(
    title,
    msg,
    colorText: type == 'error' ? lightColor : darkColor,
    snackPosition: SnackPosition.TOP,
    backgroundColor: type == "error"
        ? Colors.red.withOpacity(0.8)
        : (type == "success" ? Colors.green.withOpacity(0.8) :  mainColor.withOpacity(0.8)),
        titleText: Text(title, style: fontUbuntu.copyWith(color: (type == 'error') ? lightColor : darkColor, fontWeight: fWBold),),
        duration: duration,

  );
}

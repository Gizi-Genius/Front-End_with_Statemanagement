import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:gizi_genius_app_update/controller/Getx/mainhome_controller.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';

class MainHomePage extends StatelessWidget {
  MainHomePage({super.key});
  final mainHomeC = Get.put(MainHomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Obx(() => mainHomeC.dashBoardItems[mainHomeC.selectedItemPositions.value],),
      bottomNavigationBar: Obx(() {
  return SnakeNavigationBar.color(
    behaviour: SnakeBarBehaviour.floating,
    snakeViewColor: mainColor,
    backgroundColor: backgroundColor2,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    snakeShape: SnakeShape.rectangle,
    selectedItemColor: lightColor,
    unselectedItemColor: lightColor,
    currentIndex: mainHomeC.selectedItemPositions.value,
    onTap: (index) {
      mainHomeC.selectedItemPositions.value = index;
    },
    items: List.generate(
      mainHomeC.dashBoardItems.length,
      (index) => BottomNavigationBarItem(
        backgroundColor: backgroundColor2,
        icon: mainHomeC.iconNavPages[index], // Tambahkan `.value` untuk mengakses nilai ikon
        label: mainHomeC.labelPage[index].toString(),
      )
    ),
  );
})

    );
  }
}

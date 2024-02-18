import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gizi_genius_app_update/views/pages/dasboardPage.dart';
import 'package:gizi_genius_app_update/views/pages/menuFoodPage.dart';
import 'package:gizi_genius_app_update/views/pages/menuFoodUserPage.dart';
import 'package:gizi_genius_app_update/views/pages/profilePage.dart';
class MainHomeController extends GetxController {
  final selectedItemPositions = 0.obs; // Gunakan `.obs` untuk membuat variabel menjadi reactive
  final labelPage = ['Dashboard', 'Menu', 'Food User','Profile'].obs;
  final iconNavPages = const [
    Icon(Icons.home),
    Icon(Icons.restaurant_menu),
    Icon(Icons.food_bank),
    Icon(Icons.account_circle),
  ].obs;
  final dashBoardItems =  [
    DashboardPage(),
    MenuPage(),
    MenuFoodUser(),
    ProfilePage(),
  ].obs;
}

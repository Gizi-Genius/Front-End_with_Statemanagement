import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gizi_genius_app_update/views/pages/screens/listFoods.dart';
import 'package:gizi_genius_app_update/views/pages/screens/listFoodsUser.dart';
import 'package:gizi_genius_app_update/views/pages/screens/listResepFoods.dart';

class MenuFoodController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  final selectedItemPositions = 0.obs;
  final pageItems = const [
    ListFoods(),
    ListResepFoods(),
    ListFoodUsers()
  ].obs;
  final iconTabBar = [
    Icons.food_bank,
    Icons.restaurant,
    Icons.fastfood
  ].obs;

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: iconTabBar.length, vsync: this);
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}

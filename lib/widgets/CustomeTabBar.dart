import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gizi_genius_app_update/controller/Getx/menuFood_controller.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';

class CustomeTabBar extends StatelessWidget {
  CustomeTabBar({Key? key}) : super(key: key);
  final menuFoodC = Get.put(MenuFoodController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: menuFoodC.pageItems.length,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
            backgroundColor: backgroundColor,
            title: const CustomeText(text: 'Healthy Foods', color: lightColor),
            centerTitle: true,
            bottom: TabBar(
              labelColor: lightColor,
              unselectedLabelColor: greyColor.withOpacity(0.8),
              indicator: UnderlineTabIndicator(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 5.0, color: mainColor),
                insets: const EdgeInsets.symmetric(horizontal: 60),
              ),
              controller: menuFoodC.tabController,
              tabs: List.generate(
                  menuFoodC.pageItems.length,
                  (index) => Obx(
                        () => Tab(
                          icon: Icon(
                            menuFoodC.iconTabBar[index],
                          ),
                        ),
                      )),
            )),
        body: TabBarView(
          physics: const BouncingScrollPhysics(),
          controller: menuFoodC.tabController,
          children: menuFoodC.pageItems,
        ),
      ),
    );
  }
}

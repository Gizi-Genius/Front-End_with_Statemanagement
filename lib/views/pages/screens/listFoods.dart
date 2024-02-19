import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/animations/left.dart';
import 'package:gizi_genius_app_update/animations/up.dart';
import 'package:gizi_genius_app_update/controller/provider/food_Provider.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';
import 'package:gizi_genius_app_update/widgets/customeLoader.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';
import 'package:gizi_genius_app_update/widgets/customeTextField.dart';
import 'package:gizi_genius_app_update/widgets/itemListTile.dart';
import 'package:provider/provider.dart';

class ListFoods extends StatelessWidget {
  const ListFoods({super.key});

  @override
  Widget build(BuildContext context) {
    final foodProv = Provider.of<FoodProvider>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UpAnimation(
                  delay: 1,
                  child: CustomeText(
                    text: 'Menu',
                    color: lightColor,
                    weight: fWBold,
                    size: 20,
                  )),
              const Divider(),
              const SizedBox(height: 16),
              UpAnimation(
                  delay: 3,
                  child: CustometextField(
                    text: 'Search...',
                    styTextField: greyColor.withOpacity(0.8),
                    borderSideColor: greyColor.withOpacity(0.8),
                    hintTextColor: greyColor.withOpacity(0.8),
                    iconprefix: Container(
                      margin: const EdgeInsets.only(left: 15, right: 10),
                      child:
                          const Icon(CupertinoIcons.search, color: lightColor),
                    ),
                  )),
              const SizedBox(height: 16),
              // TextButton(onPressed: () => foodProv.fetchFoods(), child: Text('sdsds'))
              Expanded(
                child: Consumer<FoodProvider>(
                  builder: (context, foodProvider, child) {
                    if (foodProvider.foods.isEmpty) {
                      return Center(child: Loader());
                    } else {
                      return ListView.builder(
                        itemCount: foodProvider.foods.length,
                        itemBuilder: (BuildContext context, int index) {
                          return LeftAnimation(
                            delay: index / 5,
                            child: ListTileMenu(
                                title: '${foodProvider.foods[index].namaMakanan}',
                                protein: 'Protein : ${foodProvider.foods[index].protein} g',
                                lemak: 'Lemak: ${foodProvider.foods[index].lemak} g',
                                karbo: 'Karbo: ${foodProvider.foods[index].karbohidrat} g',
                                image: "assets/images/th.jpg",
                                quantity: 'Jumlah: 1',
                                ontap: () {
                                  print('Ditambah');
                                }),
                          );
                        },
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

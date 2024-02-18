import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/animations/left.dart';
import 'package:gizi_genius_app_update/animations/up.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';
import 'package:gizi_genius_app_update/widgets/customeTextField.dart';
import 'package:gizi_genius_app_update/widgets/itemListTile.dart';

class ListFoods extends StatelessWidget {
  const ListFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(13),
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
              const UpAnimation(
                  delay: 3,
                  child: CustometextField(
                    text: 'Search...',
                  )),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return LeftAnimation(
                      delay: index / 5,
                      child: ListTileMenu(
                          title: 'Ayam Panggang',
                          protein: 'Protein: 20 g',
                          lemak: 'Lemak: 10 g',
                          karbo: 'Karbo: 15 g',
                          image: "../assets/images/th.jpg",
                          quantity: 'Jumlah: 1',
                          ontap: (){
                            print('Ditambah');
                          }),
                    );
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

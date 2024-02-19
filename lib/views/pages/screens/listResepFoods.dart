import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/animations/left.dart';
import 'package:gizi_genius_app_update/animations/up.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';
import 'package:gizi_genius_app_update/widgets/customeTextField.dart';
import 'package:gizi_genius_app_update/widgets/itemListGridTile.dart';

class ListResepFoods extends StatelessWidget {
  const ListResepFoods({super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
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
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return LeftAnimation(
                        delay: index / 5, child: const ListGridTile());
                  },
                ),
              )
            ],
          ),
        ),
      ));
}

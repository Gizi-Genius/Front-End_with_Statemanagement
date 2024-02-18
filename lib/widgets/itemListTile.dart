import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';

class ListTileMenu extends StatelessWidget {
  final String title, protein, image, lemak, karbo, quantity;
  final VoidCallback ontap;

  const ListTileMenu(
      {super.key,
      required this.title,
      required this.protein,
      required this.lemak,
      required this.karbo,
      required this.image,
      required this.quantity,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            width: double.infinity,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white, width: 2)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Container(
                      width: 129,
                      height: 103,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(image), fit: BoxFit.cover)),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomeText(
                          text: title,
                          color: lightColor,
                          size: 13,
                          weight: fWBold,
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            CustomeText(
                                text: lemak, color: greyColor, size: 12),
                            SizedBox(width: 12),
                            CustomeText(
                              text: quantity,
                              color: greyColor,
                              size: 12,
                            )
                          ],
                        ),
                        const SizedBox(height: 4),
                        CustomeText(
                          text: protein,
                          color: greyColor,
                          size: 12,
                        ),
                        const SizedBox(height: 4),
                        CustomeText(
                          text: karbo,
                          color: greyColor,
                          size: 12,
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: const Icon(
                      Icons.add,
                      color: lightColor,
                      size: 35,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

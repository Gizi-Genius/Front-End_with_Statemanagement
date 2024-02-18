import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';

class ListGridTile extends StatelessWidget {
  const ListGridTile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          image: const DecorationImage(
              image: AssetImage("../assets/images/th.jpg"), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: blackColor.withOpacity(0.4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12, top: 12, bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomeText(
                        text: 'Ayam Panggang - Tanpa Minyak',
                        color: lightColor,
                        size: 13,
                        weight: fWBold,
                      ),
                      SizedBox(height: 12),
                      const Row(
                        children: [
                          CustomeText(
                            text: 'Kalori: 200 Kcal',
                            color: lightColor,
                            size: 12,
                          ),
                          SizedBox(width: 12),
                          CustomeText(text: 'Jumlah: 1', color: lightColor)
                        ],
                      ),
                      const SizedBox(height: 4),
                      const CustomeText(
                        text: 'Protein: 20 g',
                        color: lightColor,
                        size: 12,
                      ),
                      const SizedBox(height: 4),
                      const CustomeText(text: 'Karbo: 3 g', color: lightColor)
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 69),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                    decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 35,
                    )),
              ],
            ),
            // color: Colors.black.withOpacity(0.1),
          )
        ],
      ),
    );
  }
}

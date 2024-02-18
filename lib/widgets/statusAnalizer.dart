import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AnalizerStatus extends StatelessWidget {
  const AnalizerStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              CustomeText(text: 'Sisa = Target - Makanan + Latihan', color: greyColor, size: 10, weight: fW300,),
              SizedBox(height: 20),
              CircularPercentIndicator(
                backgroundColor: greyColor,
                radius: 80,
                animationDuration: 1,
                lineWidth: 11.0,
                animation: true,
                percent: 0.45,
                center: CustomeText(text: "Kalori yg dimakan \n45 Kcal", color: lightColor, size: 11, weight: fWBold,),
                circularStrokeCap: CircularStrokeCap.round,
                progressColor: mainColor,
              ),
            ],
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                    padding: const EdgeInsets.all(8),
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                      border: Border(
                        left: BorderSide(width: 2, color: mainColor),
                        top: BorderSide(width: 2, color: mainColor),
                        bottom: BorderSide(width: 2, color: mainColor),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomeText(
                              text: 'Target',
                              color: lightColor,
                              size: 11,
                              weight: fW500,
                            ),
                            CustomeText(
                              text: '200 Kcal',
                              color: lightColor,
                              size: 12,
                              weight: fW400,
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomeText(
                              text: 'sisa',
                              color: lightColor,
                              weight: fW500,
                              size: 11,
                            ),
                            CustomeText(
                              text: '1965 Kcal',
                              color: lightColor,
                              size: 12,
                              weight: fW400,
                            )
                          ],
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomeText(text: 'Protein', color: lightColor.withOpacity(0.8), size: 11, weight: fW500,),
                      CustomeText(text: '2000 g', color: lightColor.withOpacity(0.8), size: 12, weight: fW400,)
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomeText(text: 'Karbo', color: lightColor.withOpacity(0.8), size: 11, weight: fW500,),
                        CustomeText(text: '2000 g', color: lightColor.withOpacity(0.8), size: 12, weight: fW400,),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 44),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomeText(text: 'Lemak', color: lightColor.withOpacity(0.8), size: 11, weight: fW600,),
                    CustomeText(text: '2000 g', color: lightColor.withOpacity(0.8), size: 12, weight: fW400,),
                  ],
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        )
      ],
    );
  }
}

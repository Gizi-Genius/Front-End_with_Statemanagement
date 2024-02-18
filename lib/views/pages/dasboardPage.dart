import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/animations/left.dart';
import 'package:gizi_genius_app_update/animations/up.dart';
import 'package:gizi_genius_app_update/resources/materialChart.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';
import 'package:gizi_genius_app_update/widgets/statusAnalizer.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              UpAnimation(
                delay: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomeText(
                      text: 'Hai MaulK~',
                      color: lightColor,
                      size: 20,
                      weight: fWBold,
                    ),
                    const Icon(
                      Icons.message,
                      color: lightColor,
                      size: 25,
                    )
                  ],
                ),
              ),
              const UpAnimation(
                  delay: 1,
                  child: CustomeText(
                    text: "Lihat perhitungan kalori mu",
                    color: lightColor,
                    size: 13,
                  )),
              SizedBox(height: 16),
              UpAnimation(
                delay: 1.2,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    color: Color(0xff001F3F),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          spreadRadius: 1,
                          offset: Offset(2, 2)),
                    ],
                  ),
                  child: AnalizerStatus()
                ),
              ),
              SizedBox(height: 40),
              UpAnimation(
                delay: 1.5,
                child: CustomeText(text: 'Proggres', color: lightColor, size: 20, weight: fWBold,),
              ),
              SizedBox(height: 16),
              const LeftAnimation(delay: 1.5, child: LinePage()),
            ],
          ),
        ),
      ),
    );
  }
}

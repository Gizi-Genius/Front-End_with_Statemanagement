import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/animations/bottom.dart';
import 'package:gizi_genius_app_update/animations/left.dart';
import 'package:gizi_genius_app_update/animations/right.dart';
import 'package:gizi_genius_app_update/animations/up.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';
import 'package:gizi_genius_app_update/widgets/customeButton.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00152B),
      appBar: AppBar(
          backgroundColor: Color(0xff001F3F),
          title: LeftAnimation(
            delay: 1,
            child: CustomeText(text: 'MyProfile', color: lightColor,size: 24, weight: fWBold,),

          )),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: LeftAnimation(
                delay: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              image: const  DecorationImage(
                                image: AssetImage(
                                  'assets/images/vector.jpg',
                                ),
                                fit: BoxFit.contain,
                              )),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomeText(text: 'Maulana Khairuman', color: lightColor, size: 17, weight: fWBold,),
                            CustomeText(text: 'maulanakhairuman2004@gmail.com', color: greyColor.withOpacity(0.8), size: 10,)
                          ],
                        ),
                      ],
                    ),
                SizedBox(
                  width: 80,
                  height: 27,
                    child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(buttonColor)),
                          onPressed: () {},
                          child: const CustomeText(
                              text: 'Edit', color: lightColor, size: 15,)),
                  )
                  ],
                ),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RightAnimation(
                    delay: 1,
                    child: Column(
                      children: [
                        CustomeText(text: 'Gender', color: lightColor, weight: fWBold, size: 20,),
                        CustomeText(text: 'Laki-Laki', color: greyColor.withOpacity(0.8), size: 15,)
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  RightAnimation(
                    delay: 1.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomeText(text: 'Target', color: lightColor, size: 20, weight: fWBold,),
                        CustomeText(text: 'Turunin Berat Badan', color: greyColor.withOpacity(0.8))
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  RightAnimation(
                    delay: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Berat Badan",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "68 Kg",
                          style:
                              TextStyle(color: Color(0xff9B9B9B), fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  RightAnimation(
                    delay: 2.5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tinggi Badan",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "174 Cm",
                          style:
                              TextStyle(color: Color(0xff9B9B9B), fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  RightAnimation(
                    delay: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Umur",
                          style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "19 Thn",
                          style:
                              TextStyle(color: Color(0xff9B9B9B), fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  BottomAnimation(
                    delay: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xff7986CB),
                          borderRadius: BorderRadius.circular(20)),
                      margin: EdgeInsets.symmetric(horizontal: 60),
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Log-Out',
                            style: TextStyle(
                                color: Color(0xffF8F8F8),
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 12),
                          Icon(
                            Icons.logout,
                            color: Color(0xffF8F8F8),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

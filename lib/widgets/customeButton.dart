import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton(
      {super.key,
      required this.onpressed,
      required this.buttonColor,
      required this.text});
  final VoidCallback onpressed;
  final Color buttonColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        primary: buttonColor,
      ),
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        child: CustomeText(
          size: 14,
          text: text,
          color: lightColor,
          weight: fW600,
        ),
      ),
    );
  }
}

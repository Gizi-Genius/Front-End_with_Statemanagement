import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';

class CustometextField extends StatelessWidget {
  final String? text;
  final Color styTextField, hintTextColor, borderSideColor;
  final Widget? iconprefix, txtsuffix;
  final VoidCallback? onTap;
  const CustometextField(
      {super.key,
      this.text,
      required this.borderSideColor,
      required this.hintTextColor,
      required this.styTextField,
      this.onTap,
      this.iconprefix,
      this.txtsuffix});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: onTap,
      style: fontUbuntu.copyWith(color: styTextField),
      decoration: InputDecoration(
          hintText: text,
          hintStyle: fontUbuntu.copyWith(color: hintTextColor),
          contentPadding: const EdgeInsets.all(4),
          prefixIcon: iconprefix,
          suffix: txtsuffix,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderSideColor, width: 2),
              borderRadius: BorderRadius.circular(15)),
          // Mengatur warna border pada normal state
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderSideColor, width: 2),
              borderRadius: BorderRadius.circular(15)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
    );
  }
}

class CustomeFormOpening extends StatelessWidget {
  final VoidCallback onTapFunc;
  final String txt;
  const CustomeFormOpening({super.key, required this.onTapFunc, required this.txt});

  @override
  Widget build(BuildContext context) => CustometextField(
      iconprefix: Container(
        margin: const EdgeInsets.only(right: 5),
        child: const Icon(
          CupertinoIcons.search,
          color: lightColor,
          size: 5,
        ),
      ),
      onTap: onTapFunc,
      txtsuffix: Container(
          margin: EdgeInsets.only(right: 10),
          child: CustomeText(
            text: txt,
            color: darkColor,
            weight: fW400,
          )),
      borderSideColor: darkColor,
      hintTextColor: darkColor,
      styTextField: darkColor);
}

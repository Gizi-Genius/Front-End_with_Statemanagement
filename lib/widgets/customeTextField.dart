import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';

class CustometextField extends StatelessWidget {
  final String text;
  const CustometextField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
              style: fontUbuntu.copyWith(color: greyColor.withOpacity(0.8)),
              decoration: InputDecoration(
                  hintText: text,
                  hintStyle: fontUbuntu.copyWith(color: greyColor.withOpacity(0.8)),
                  contentPadding: const EdgeInsets.all(4),
                  prefixIcon: Container(
                    margin: const EdgeInsets.only(left: 15, right: 10),
                    child: const Icon(
                      CupertinoIcons.search,
                      color: lightColor
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: greyColor.withOpacity(0.8), width: 2),
                      borderRadius: BorderRadius.circular(15)),
                  // Mengatur warna border pada normal state
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: greyColor.withOpacity(0.8), width: 2),
                      borderRadius: BorderRadius.circular(15)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            );
  }
}
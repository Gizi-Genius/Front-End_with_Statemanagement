import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';

class CustomeFormField extends StatelessWidget {
  final IconData icon;
  final TextEditingController controller;
  final Color colorIcon;
  final bool obscureText;
  final Widget? suffixIcon;
  const CustomeFormField({
    super.key,
    this.suffixIcon,
    required this.controller,
    required this.colorIcon,
    required this.icon,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      
      style: fontUbuntu.copyWith(color: lightColor),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: Container(
            margin: const EdgeInsets.only(left: 12, right: 12, top: 12, bottom: 12),
            padding: const EdgeInsets.only(right: 12),
            decoration: const BoxDecoration(
                border: Border(
                    right: BorderSide(
                        color: lightColor))),
            child: Icon(icon, color: colorIcon)),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class ContainerFormField extends StatelessWidget {
  const ContainerFormField({
    super.key,
    required this.form});
  final Widget form;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: greyColor.withOpacity(0.4),
            borderRadius: BorderRadius.circular(10)),
        child: form);
  }
}

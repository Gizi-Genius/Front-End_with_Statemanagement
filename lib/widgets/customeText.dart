import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';

class CustomeText extends StatelessWidget {
  final String text;
  final Color color;
  final double? size;
  final FontWeight? weight;
  const CustomeText(
      {super.key,
      required this.text,
      required this.color,
      this.size,
      this.weight})
      : super();

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          fontUbuntu.copyWith(fontSize: size, fontWeight: weight, color: color),
    );
  }
}

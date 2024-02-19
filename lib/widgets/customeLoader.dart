import 'package:flutter/material.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(122, 58, 58, 58),
      body: Center(
          child: CircularProgressIndicator(
        color: mainColor,
      )),
    );
  }
}

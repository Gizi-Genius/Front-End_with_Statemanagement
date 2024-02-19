import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gizi_genius_app_update/config/Firebase/firebase_options.dart';
import 'package:gizi_genius_app_update/controller/provider/food_Provider.dart';
import 'package:gizi_genius_app_update/views/auth/loginPage.dart';
import 'package:gizi_genius_app_update/views/auth/registerPage.dart';
import 'package:gizi_genius_app_update/views/navigation/mainHomePage.dart';
import 'package:gizi_genius_app_update/views/pages/opening/formDataUser.dart';
import 'package:gizi_genius_app_update/views/pages/opening/opening.dart';
import 'package:gizi_genius_app_update/views/pages/profilePage.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ChangeNotifierProvider(
      create: (context) => FoodProvider(), child: const GiziGenius()));
}

class GiziGenius extends StatelessWidget {
  const GiziGenius({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(name: '/login', page: () => LoginPage()),
          GetPage(name: '/register', page: () => RegisterPage()),
          GetPage(
            name: '/opening',
            page: () => OpeningPage(),
          ),
          GetPage(name: '/formOpening', page: () => FormView()),
          GetPage(name: '/mainHome', page: () => MainHomePage())
        ],
        home: MainHomePage());
  }
}

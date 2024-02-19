import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:gizi_genius_app_update/config/Server/apiDatabases.dart';
import 'package:gizi_genius_app_update/models/foodModels.dart';
import 'package:http/http.dart' as http;

class FoodProvider with ChangeNotifier {
  List<Food> _foods = [];

  List<Food> get foods => _foods;

  Future<void> fetchFoods() async {
try {
      final response = await http.get(Uri.parse(Api().listFoods));
      print(response.statusCode);
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body)['data'];
        //         for (var foodData in jsonData) {
        //   final String namaMakanan = foodData['nama_makanan'];
        //   print(namaMakanan); // Output: Nasi Putih Matang, Telur Ayam, ...
        //   // You can create Food objects here if needed
        // }
        if (jsonData != null && jsonData is List<dynamic>) {
          _foods = jsonData.map((item) => Food.fromJson(item)).toList();
          notifyListeners();
        } else {
          throw Exception('Data format is not valid');
        }
        print(jsonData);
      } else {
        throw Exception('Failed to load foods');
      }
} catch (e) {
  print(e);
}
  }
}

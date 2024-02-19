import 'package:get/get.dart';
  enum Gender { male, female }
class GenderController extends GetxController {
  var selectedOption = ''.obs;

  void setSelectedOption(String option) {
    selectedOption.value = option;
  }
}
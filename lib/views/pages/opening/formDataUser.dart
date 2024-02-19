import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gizi_genius_app_update/animations/left.dart';
import 'package:gizi_genius_app_update/animations/up.dart';
import 'package:gizi_genius_app_update/themes/materialColors.dart';
import 'package:gizi_genius_app_update/themes/materialFont.dart';
import 'package:gizi_genius_app_update/widgets/customeButton.dart';
import 'package:gizi_genius_app_update/widgets/customeText.dart';
import 'package:gizi_genius_app_update/widgets/customeTextField.dart';

class FormView extends StatefulWidget {
  const FormView({Key? key});

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  String selectedOption = '';
  String _selectedItem = 'Lainnya';
  final List<String> _dropdownItems = [
    'Turunin Berat Badan',
    'Menjaga Berat Badan',
    'Menambah Berat Badan',
    'Lainnya',
  ];

  void setSelectedOption(String option) {
    setState(() {
      selectedOption = option;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff001F3F),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 75),
            UpAnimation(
              delay: 1,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: CustomeText(
                  text: 'Diisi dulu ya...',
                  color: lightColor,
                  size: 24,
                  weight: fWBold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35),
                  ),
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                      ),
                      child: LeftAnimation(
                        delay: 1,
                        child: Text(
                          "Gender",
                          style: TextStyle(
                              color: Color(0xff001F3F),
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    LeftAnimation(
                      delay: 1.2,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                value: 'Option 1',
                                groupValue: selectedOption,
                                onChanged: (value) {
                                  setSelectedOption(value.toString());
                                },
                              ),
                              Text('Laki-laki'),
                            ],
                          ),
                          SizedBox(width: 24),
                          Radio(
                            value: 'Option 2',
                            groupValue: selectedOption,
                            onChanged: (value) {
                              setSelectedOption(value.toString());
                            },
                          ),
                          Text('Perempuan'),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: LeftAnimation(
                        delay: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Tinggi Badan",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff001F3F),
                              ),
                            ),
                            CustomeFormOpening(onTapFunc: (){}, txt: 'Cm'),
                            SizedBox(height: 12),
                            Text(
                              "Berat Badan",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff001F3F),
                              ),
                            ),
                            CustomeFormOpening(onTapFunc: (){}, txt: 'Kg'),
                            SizedBox(height: 12),
                            Text(
                              "Umur",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff001F3F),
                              ),
                            ),
                            CustomeFormOpening(onTapFunc: (){}, txt: 'Thn'),
                            SizedBox(height: 12),
                            Text(
                              "Opsi Target",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff001F3F),
                              ),
                            ),
                            Container(
                              width: double
                                  .infinity, // Set the width of the dropdown button
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2,
                                    color: Color(0xff001F3F)), // Add border
                                borderRadius: BorderRadius.circular(
                                    15), // Optional: Add border radius
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    isExpanded:
                                        true, // Set to true to expand the dropdown button to fill its container
                                    value: _selectedItem,
                                    items: _dropdownItems.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        _selectedItem = newValue!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 40),
                            CustomeButton(
                                onpressed: () => Get.offAllNamed('/mainHome'),
                                buttonColor: buttonColor,
                                text: 'Submit')
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

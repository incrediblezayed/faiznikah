import 'package:faiznikah/src/utils/globals.dart';
import 'package:faiznikah/src/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyPolicyPage extends StatefulWidget with Globals {
  static const id = "/privacypolicy";
  @override
  _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  final String privacyPolicy =
      "I am a 31-year-old man from a Bengali family. I have 6’1” in height and a muscular build. I lead a healthy lifestyle and regularly go to the gym. I am a businessman and owner of a transportation company. I live with my parents and younger brother, I love and support them. I want to start a modern family but also follow social ethics. I am an active person with versatile hobbies. I like traveling, hiking, and adventure sports. When I stay at home, I like to cook for my family and friends.";

  bool _value = false;
  bool _value1 = false;

  Widget singleChildScrollView() => SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              color: AppColors.secondColor,
              child: Center(
                  child: Text(
                'PRIVACY POLICY',
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.firstColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            'TERMS AND CONDITIONS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(privacyPolicy.toString()),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            ' Permission to share your profile to\n matrimonial Whatsapp groups',
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Checkbox(
                            value: _value,
                            onChanged: (newValue) {
                              setState(() {
                                _value = newValue!;
                              });
                            }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            ' Permission to share your profile to\n matrimonial Whatsapp groups',
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Checkbox(
                            value: _value1,
                            onChanged: (newValue) {
                              setState(() {
                                _value1 = newValue!;
                              });
                            }),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            primary: AppColors.secondColor,
                          ),
                          onPressed: () {
                            if (_value && _value1) {
                              // Get.off(ProfileCreationFormPage());
                            } else {
                              Get.showSnackbar(widget.snackBar(null,
                                  "Please Accept the terms and conditions to proceed"));
                            }
                          },
                          child: Text('Accept Terms & Conditions')),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      body: SafeArea(
        child: Container(
          child: singleChildScrollView(),
        ),
      ),
    ));
  }
}

import 'package:faiznikah/src/app/profile/profile_controller.dart';
import 'package:faiznikah/src/widgets/profile_creation_form_field.dart';
import 'package:faiznikah/src/widgets/profile_creation_option_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MaritalInformation extends StatelessWidget {
  final ProfileController controller;
  const MaritalInformation({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.maritalInfo,
      child: Column(
        children: [
          ProfileCreationOptionRow(
              onTap: controller.selectMaritalStatus,
              name: "Marital Status",
              value: controller.maritalStatus),
          Obx(
            () => Visibility(
              visible: controller.maritalStatus.value !=
                  controller.maritalStatusList.first,
              child: Column(
                children: [
                  Text(
                    'Children Details of Divorce / Khula / Second Marriage',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 70,
                        child: ProfileTextFeild(
                          onChanged: (v) => controller
                              .profileCreationModel.noOfBoys = int.parse(v),
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: 'Boys',
                            hintText: 'Number',
                            hintStyle: TextStyle(
                              fontSize: 12,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 70,
                        child: ProfileTextFeild(
                          onChanged: (v) =>
                              controller.profileCreationModel.boysAges = v,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: 'Age',
                            hintText: 'Age',
                            hintStyle: TextStyle(
                              fontSize: 12,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 70,
                        child: ProfileTextFeild(
                          onChanged: (v) => controller
                              .profileCreationModel.noOfGirls = int.parse(v),
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: 'Girls',
                            hintText: 'Number',
                            hintStyle: TextStyle(
                              fontSize: 12,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 70,
                        child: ProfileTextFeild(
                          onChanged: (v) =>
                              controller.profileCreationModel.girlsAges = v,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            labelText: 'Age',
                            hintText: 'Age',
                            hintStyle: TextStyle(
                              fontSize: 12,
                            ),
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

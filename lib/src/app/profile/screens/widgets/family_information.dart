import 'package:faiznikah/src/app/profile/profile_controller.dart';
import 'package:flutter/services.dart';
import 'index.dart';

class FamilyInformation extends StatelessWidget {
  const FamilyInformation({Key? key, required this.controller})
      : super(key: key);
  final ProfileController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          key: controller.familyInfo,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Parents"),
                  ProfileTextFeild(
                    controller: TextEditingController(
                        text: controller.profileCreationModel.fatherName),
                    validator: (input) {
                      if (input!.isEmpty) {
                        return "Please enter your father name";
                      }
                    },
                    onChanged: (value) {
                      controller.profileCreationModel.fatherName = value;
                    },
                    icon: Icons.person,
                    hintText: 'Enter your father\'s full name',
                    labelText: 'Father Name',
                  ),
                  ProfileTextFeild(
                    controller: TextEditingController(
                        text: controller.profileCreationModel.motherName),
                    validator: (input) {
                      if (input!.isEmpty) {
                        return "Please enter your mother name";
                      }
                    },
                    onChanged: (value) {
                      controller.profileCreationModel.motherName = value;
                    },
                    icon: Icons.person,
                    hintText: 'Enter your mother\'s full name',
                    labelText: 'Mother Name',
                  ),
                  ProfileCreationOptionRow(
                      onTap: () {
                        controller.selectParentStatus(true);
                      },
                      name: "Father",
                      value: controller.fatherStatus),
                  ProfileCreationOptionRow(
                      onTap: () {
                        controller.selectParentStatus(false);
                      },
                      name: "Mother",
                      value: controller.motherStatus),
                  Text("Brothers"),
                  ProfileTextFeild(
                    controller: TextEditingController(
                        text: controller.profileCreationModel.noOfBrothers
                            .toString()),
                    keyboardType: TextInputType.phone,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return "Field is Empty";
                      }
                      if (!input.contains(RegExp(r'[0-9]'))) {
                        return "Enter only Digit";
                      }
                    },
                    onChanged: (v) {
                      controller.profileCreationModel.noOfBrothers =
                          int.parse(v);
                    },
                    labelText: "Total brother",
                  ),
                  ProfileTextFeild(
                    controller: TextEditingController(
                        text: controller.profileCreationModel.marriedBrothers
                            .toString()),
                    keyboardType: TextInputType.phone,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return "Field is Empty";
                      }
                      if (!input.contains(RegExp(r'[0-9]'))) {
                        return "Enter only Digit";
                      }
                    },
                    onChanged: (v) {
                      controller.profileCreationModel.marriedBrothers =
                          int.parse(v);
                    },
                    labelText: "Married",
                  ),
                  ProfileTextFeild(
                    controller: TextEditingController(
                        text: controller.profileCreationModel.unmarriedBrothers
                            .toString()),
                    keyboardType: TextInputType.phone,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return "Field is Empty";
                      }
                      if (!input.contains(RegExp(r'[0-9]'))) {
                        return "Enter only Digit";
                      }
                    },
                    onChanged: (v) {
                      controller.profileCreationModel.unmarriedBrothers =
                          int.parse(v);
                    },
                    labelText: "Unmarried",
                  ),
                  Text("Sisters"),
                  ProfileTextFeild(
                    controller: TextEditingController(
                        text: controller.profileCreationModel.noOfSisters
                            .toString()),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.phone,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return "Field is Empty";
                      }
                      if (!input.contains(RegExp(r'[0-9]'))) {
                        return "Enter only Digit";
                      }
                    },
                    onChanged: (v) {
                      controller.profileCreationModel.noOfSisters =
                          int.parse(v);
                    },
                    labelText: "Total Sisters",
                  ),
                  ProfileTextFeild(
                    keyboardType: TextInputType.phone,
                    controller: TextEditingController(
                        text: controller.profileCreationModel.marriedSisters
                            .toString()),
                    validator: (input) {
                      if (input!.isEmpty) {
                        return "Field is Empty";
                      }
                      if (!input.contains(RegExp(r'[0-9]'))) {
                        return "Enter only Digit";
                      }
                    },
                    onChanged: (v) {
                      controller.profileCreationModel.marriedSisters =
                          int.parse(v);
                    },
                    labelText: "Married",
                  ),
                  ProfileTextFeild(
                    controller: TextEditingController(
                        text: controller.profileCreationModel.unmarriedSisters
                            .toString()),
                    keyboardType: TextInputType.phone,
                    validator: (input) {
                      if (input!.isEmpty) {
                        return "Field is Empty";
                      }
                      if (!input.contains(RegExp(r'[0-9]'))) {
                        return "Enter only Digit";
                      }
                    },
                    onChanged: (v) {
                      controller.profileCreationModel.unmarriedSisters =
                          int.parse(v);
                    },
                    labelText: "Unmarried",
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

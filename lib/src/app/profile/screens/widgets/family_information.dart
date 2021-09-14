import 'package:faiznikah/src/app/profile/profile_controller.dart';
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
                    validator: (input) {
                    if (input!.isEmpty) {
                      return "Please enter your father name";
                    }
                     if (!input.contains(" ")) {
                      return "Please Enter Full name";
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
                    keyboardType: TextInputType.number,
                     validator: (input) {
                    if (input!.isEmpty) {
                      return "Field is Empty";
                    }
                    if(!input.contains(RegExp(r'[0-9]'))){
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
                    onChanged: (v) {
                      controller.profileCreationModel.marriedBrothers =
                          int.parse(v);
                    },
                    labelText: "Married",
                  ),
                  ProfileTextFeild(
                    onChanged: (v) {
                      controller.profileCreationModel.unmarriedBrothers =
                          int.parse(v);
                    },
                    labelText: "Unmarried",
                  ),
                  Text("Sisters"),
                  ProfileTextFeild(
                    onChanged: (v) {
                      controller.profileCreationModel.noOfSisters =
                          int.parse(v);
                    },
                    labelText: "Total Sisters",
                  ),
                  ProfileTextFeild(
                    onChanged: (v) {
                      controller.profileCreationModel.marriedSisters =
                          int.parse(v);
                    },
                    labelText: "Married",
                  ),
                  ProfileTextFeild(
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

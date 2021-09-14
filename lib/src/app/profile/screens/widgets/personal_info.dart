import 'package:faiznikah/src/app/profile/profile_controller.dart';
import 'package:faiznikah/src/widgets/profile_creation_form_field.dart';
import 'package:faiznikah/src/widgets/profile_creation_option_row.dart';
import 'package:faiznikah/src/widgets/state_district_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class PersonalInforMation extends StatelessWidget {
  const PersonalInforMation({Key? key, required this.controller})
      : super(key: key);
  final ProfileController controller;
  String dateFormat(DateTime extractForm) {
    String day = extractForm.day < 10
        ? '0${extractForm.day}'
        : extractForm.day.toString();
    String month = extractForm.month < 10
        ? '0${extractForm.month}'
        : extractForm.month.toString();
    String year = extractForm.year < 10
        ? '0${extractForm.year}'
        : extractForm.year.toString();

    return '$year-$month-$day';
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.personalInfo,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProfileTextFeild(
              onChanged: (value) {
                controller.profileCreationModel.name = value;
              },
              icon: Icons.person,
              hintText: "Enter your full name",
              labelText: 'Bride / Groom Name',
            ),
            ProfileTextFeild(
              onChanged: (value) =>
                  controller.profileCreationModel.personalProfile = value,
              keyboardType: TextInputType.number,
              icon: Icons.phone,
              hintText: 'Enter your phone number',
              labelText: 'Phone Number',
              maxLength: 10,
            ),
            ProfileTextFeild(
              onChanged: (value) =>
                  controller.profileCreationModel.wphone = value,
              keyboardType: TextInputType.number,
              icon: FontAwesomeIcons.whatsapp,
              hintText: 'Enter your WhatsApp Number',
              labelText: 'WhatsApp Number',
              maxLength: 10,
            ),
            ProfileTextFeild(
                controller: TextEditingController(
                    text: dateFormat(controller.profileCreationModel.dob)),
                onTap: () async {
                  DateTime? dt = await controller.selectDate(context);
                  if (dt != null) {
                    controller.profileCreationModel.dob = dt;
                  }
                },
                suffix: (controller.profileCreationModel.age == 0
                    ? "Age"
                    : controller.profileCreationModel.age.toString()),
                onChanged: (value) {},
                hintText: 'Select your date of birth',
                labelText: 'Date Of Birth',
                icon: Icons.calendar_today),
            ...controller.genderList
                .map((e) => Obx(
                      () => RadioListTile<String>(
                        value: e,
                        groupValue: controller.gender.value,
                        title: Text(e),
                        onChanged: (value) {
                          controller.switchGender(value);
                        },
                      ),
                    ))
                .toList(),
            ProfileCreationOptionRow(
                onTap: controller.selectHeight,
                name: "Height:",
                value: controller.height),
            StateDistrict(
              onCitySelected: (v) {
                if (v != null) controller.profileCreationModel.city = v;
              },
              onStateSelected: (v) {
                if (v != null) controller.profileCreationModel.state = v;
              },
            ),
            ProfileCreationOptionRow(
                onTap: controller.selecttPhysicalStatus,
                name: "Physical Status:",
                value: controller.physicalStatus),
            Obx(
              () => Visibility(
                visible: controller.physicalStatus.value !=
                    controller.physicalStatusList.first,
                child: ProfileTextFeild(
                  onChanged: (v) {
                    controller.profileCreationModel.handicapDetail = v;
                  },
                  hintText: 'Enter Detail',
                  labelText: 'Handicap Detail',
                ),
              ),
            ),
            ProfileTextFeild(
              onChanged: (v) {
                controller.profileCreationModel.address = v;
              },
              labelText: "Address",
            ),
            ProfileTextFeild(
              onChanged: (value) {
                controller.profileCreationModel.hobbies = value;
              },
              labelText: "Hobbies",
            )
          ],
        ),
      ),
    );
  }
}

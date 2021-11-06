import 'package:faiznikah/src/app/profile/screens/widgets/marital_information.dart';
import 'package:faiznikah/src/models/user_model.dart';
import 'package:faiznikah/src/utils/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController with Globals {
  GlobalKey<FormState> personalInfo = GlobalKey<FormState>();
  GlobalKey<FormState> maritalInfo = GlobalKey<FormState>();
  GlobalKey<FormState> familyInfo = GlobalKey<FormState>();
  GlobalKey<FormState> occupationInfo = GlobalKey<FormState>();
  GlobalKey<FormState> otherInfo = GlobalKey<FormState>();
  void next() {
    switch (tabController.index) {
      case 0:
        personalInfo.currentState!.save();
        if (personalInfo.currentState!.validate()) {
          moveController(1);
        }
        break;
      case 1:
        maritalInfo.currentState!.save();
        if (maritalInfo.currentState!.validate()) {
          moveController(2);
        }
        break;
      case 2:
        familyInfo.currentState!.save();
        if (familyInfo.currentState!.validate()) {
          moveController(3);
        }
        break;
      case 3:
        occupationInfo.currentState!.save();
        if (occupationInfo.currentState!.validate()) {
          moveController(4);
        }
        break;
      case 4:
        otherInfo.currentState!.save();
        if (otherInfo.currentState!.validate()) {
          Get.showSnackbar(snackBar(null, profileCreationModel.toString()));
        }
        break;
      default:
    }
  }

  void back() {
    switch (tabController.index) {
      case 1:
        moveController(0);
        break;
      case 2:
        moveController(1);
        break;
      case 3:
        moveController(2);
        break;
      case 4:
        moveController(3);
        break;
      default:
    }
  }

  void moveController(int i) {
    tabController.animateTo(i);
  }

  User profileCreationModel = User.empty();

  late TabController tabController;

  void initTabController(TickerProvider vsync) {
    tabController = TabController(length: 5, vsync: vsync);
  }

  RxString height = "Height(Feet-Inch)".obs;

  final List<String> listItem = [
    '4-0',
    '4-1',
    '4-2',
    '4-3',
    '4-4',
    '4-5',
    '4-6',
    '4-7',
    '4-8',
    '4-9',
    '4-10',
    '4-11',
    '5-0',
    '5-1',
    '5-2',
    '5-3',
    '5-4',
    '5-5',
    '5-6',
    '5-7',
    '5-8',
    '5-9',
    '5-10',
    '5-11',
    '6-0',
    '6-1',
    '6-2',
    '6-3',
    '6-4',
    '6-5',
    '6-6',
    '6-7',
    '6-8',
    '6-9',
    '6-10',
    '6-11',
    '7-0',
    '7-1',
    '7-2',
    '7-3',
    '7-4',
    '7-5',
    '7-6',
    '7-7',
    '7-8',
    '7-9',
    '7-10',
    '7-11',
    '8-0',
  ];

  void selectHeight() async {
    await getBottomSheet(list: listItem, onTap: setHeight, value: height);
  }

  void setHeight(String? height) {
    if (height != null && height != "" && height != "Height(Feet-Inch)") {
      this.height.value = height;
      profileCreationModel.height = height;
    }
  }

  late RxString maritalStatus = maritalStatusList.first.obs;
  List<String> maritalStatusList = [
    "Single",
    "Divorcee",
    "Khula",
    "Second Marriage"
  ];

  void setMaritalStatus(String? status) {
    if (status != null && status != "") {
      this.maritalStatus.value = status;
      profileCreationModel.maritialStatus = status;
    }
  }

  void selectMaritalStatus() async {
    final Globals globals = Globals();
    await globals.getBottomSheet(
        list: maritalStatusList, onTap: setMaritalStatus, value: maritalStatus);
  }

  late RxString gender = genderList.first.obs;
  List<String> genderList = [
    "Male",
    "Female",
  ];

  void switchGender(String? gender) {
    if (gender != null) {
      this.gender.value = gender;
      profileCreationModel.gender = gender;
    }
  }

  late RxString physicalStatus = physicalStatusList.first.obs;
  List<String> physicalStatusList = ["Normal", "Handicap"];

  void selecttPhysicalStatus() async {
    await getBottomSheet(
        list: physicalStatusList,
        onTap: setPhysicalStatus,
        value: physicalStatus);
  }

  void setPhysicalStatus(String? value) async {
    if (value != null) {
      this.physicalStatus.value = value;
      this.profileCreationModel.physicalStatus = value;
    }
  }

  late RxString motherStatus = parentStatus.first.obs;
  late RxString fatherStatus = parentStatus.first.obs;
  List<String> parentStatus = ["Alive", "No more"];

  void selectParentStatus(bool isFather) async {
    await getBottomSheet(
        list: parentStatus,
        onTap: (String? v) {
          setParentStatus(v, isFather);
        },
        value: isFather ? fatherStatus : motherStatus);
  }

  void setParentStatus(String? value, bool isFather) {
    if (isFather) {
      if (value != null) {
        this.fatherStatus.value = value;
        this.profileCreationModel.fatherStatus = value;
      }
    } else {
      if (value != null) {
        this.motherStatus.value = value;
        this.profileCreationModel.motherStatus = value;
      }
    }
  }

  late RxString education = educationList.first.obs;
  List<String> educationList = [
    'Below 10th Pass',
    '10th Pass',
    '12th Pass',
    'Graduation',
    'Post Graduation',
    'Others',
  ];

  void selectEducation() async {
    await getBottomSheet(
        list: educationList, onTap: setEducation, value: education);
  }

  void setEducation(String? value) {
    if (value != null) {
      profileCreationModel.education = value;
    }
  }

  RxInt unMarriedBrother = 0.obs;
  RxInt unMarriedSister = 0.obs;

  Future<DateTime?> selectDate(BuildContext context) async {
    DateTime? dt = await showDatePicker(
        context: context,
        initialDate: profileCreationModel.dob.year == DateTime.now().year
            ? DateTime.now().subtract(Duration(days: 365 * 18))
            : profileCreationModel.dob,
        firstDate: DateTime(1950),
        lastDate: DateTime.now().subtract(Duration(days: 365 * 18)));
    if (dt != null) {
      profileCreationModel.dob = dt;
      profileCreationModel.age =
          (DateTime.now().difference(profileCreationModel.dob).inDays ~/
              365.25);
      update();
    }
    return dt;
  }
}

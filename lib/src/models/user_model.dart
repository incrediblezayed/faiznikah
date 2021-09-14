// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';
import 'package:hive/hive.dart';

part 'user_model.g.dart';

@HiveType(typeId: 0)
class User {
  @HiveField(0)
  String personalProfile;
  @HiveField(1)
  String name;
  @HiveField(2)
  String fatherName;
  @HiveField(3)
  String motherName;
  @HiveField(4)
  String wphone;
  @HiveField(5)
  String contactOf;
  @HiveField(6)
  DateTime dob;
  @HiveField(7)
  int age;
  @HiveField(8)
  String gender;
  @HiveField(9)
  String height;
  @HiveField(10)
  String state;
  @HiveField(11)
  String city;
  @HiveField(12)
  String maritialStatus;
  @HiveField(13)
  int noOfBoys;
  @HiveField(14)
  String boysAges;
  @HiveField(15)
  int noOfGirls;
  @HiveField(16)
  String girlsAges;
  @HiveField(17)
  String physicalStatus;
  @HiveField(18)
  String handicapDetail;
  @HiveField(19)
  String education;
  @HiveField(20)
  String occupation;
  @HiveField(21)
  String occupationAddress;
  @HiveField(22)
  String address;
  @HiveField(23)
  String fatherStatus;
  @HiveField(24)
  String motherStatus;
  @HiveField(25)
  String fatherOccupation;
  @HiveField(26)
  int noOfBrothers;
  @HiveField(27)
  int marriedBrothers;
  @HiveField(28)
  int unmarriedBrothers;
  @HiveField(29)
  int noOfSisters;
  @HiveField(30)
  int marriedSisters;
  @HiveField(31)
  int unmarriedSisters;
  @HiveField(32)
  String hobbies;
  @HiveField(33)
  String expectations;
  @HiveField(34)
  String otherInformation;
  @HiveField(35)
  String imageExtra1;
  @HiveField(36)
  String imageExtra2;
  @HiveField(37)
  String imageExtra3;
  @HiveField(38)
  String imageExtra4;
  @HiveField(39)
  String? childrenStatus;
  @HiveField(40)
  String? imageProfile;
  @HiveField(41)
  String? imagePassport;
  User({
    required this.personalProfile,
    required this.name,
    required this.fatherName,
    required this.motherName,
    required this.wphone,
    required this.contactOf,
    required this.dob,
    required this.age,
    required this.gender,
    required this.height,
    required this.state,
    required this.city,
    required this.maritialStatus,
    required this.noOfBoys,
    required this.boysAges,
    required this.noOfGirls,
    required this.girlsAges,
    required this.physicalStatus,
    required this.handicapDetail,
    required this.education,
    required this.occupation,
    required this.occupationAddress,
    required this.address,
    required this.fatherStatus,
    required this.motherStatus,
    required this.fatherOccupation,
    required this.noOfBrothers,
    required this.marriedBrothers,
    required this.unmarriedBrothers,
    required this.noOfSisters,
    required this.marriedSisters,
    required this.unmarriedSisters,
    required this.hobbies,
    required this.expectations,
    required this.otherInformation,
    required this.imageExtra1,
    required this.imageExtra2,
    required this.imageExtra3,
    required this.imageExtra4,
    this.childrenStatus,
    this.imageProfile,
    this.imagePassport,
  });

  User copyWith({
    String? personalProfile,
    String? name,
    String? fatherName,
    String? motherName,
    String? wphone,
    String? contactOf,
    DateTime? dob,
    int? age,
    String? gender,
    String? height,
    String? state,
    String? city,
    String? maritialStatus,
    int? noOfBoys,
    String? boysAges,
    int? noOfGirls,
    String? girlsAges,
    String? physicalStatus,
    String? handicapDetail,
    String? education,
    String? occupation,
    String? occupationAddress,
    String? address,
    String? fatherStatus,
    String? motherStatus,
    String? fatherOccupation,
    int? noOfBrothers,
    int? marriedBrothers,
    int? unmarriedBrothers,
    int? noOfSisters,
    int? marriedSisters,
    int? unmarriedSisters,
    String? hobbies,
    String? expectations,
    String? otherInformation,
    String? imageExtra1,
    String? imageExtra2,
    String? imageExtra3,
    String? imageExtra4,
    String? childrenStatus,
    String? imageProfile,
    String? imagePassport,
  }) {
    return User(
      personalProfile: personalProfile ?? this.personalProfile,
      name: name ?? this.name,
      fatherName: fatherName ?? this.fatherName,
      motherName: motherName ?? this.motherName,
      wphone: wphone ?? this.wphone,
      contactOf: contactOf ?? this.contactOf,
      dob: dob ?? this.dob,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      height: height ?? this.height,
      state: state ?? this.state,
      city: city ?? this.city,
      maritialStatus: maritialStatus ?? this.maritialStatus,
      noOfBoys: noOfBoys ?? this.noOfBoys,
      boysAges: boysAges ?? this.boysAges,
      noOfGirls: noOfGirls ?? this.noOfGirls,
      girlsAges: girlsAges ?? this.girlsAges,
      physicalStatus: physicalStatus ?? this.physicalStatus,
      handicapDetail: handicapDetail ?? this.handicapDetail,
      education: education ?? this.education,
      occupation: occupation ?? this.occupation,
      occupationAddress: occupationAddress ?? this.occupationAddress,
      address: address ?? this.address,
      fatherStatus: fatherStatus ?? this.fatherStatus,
      motherStatus: motherStatus ?? this.motherStatus,
      fatherOccupation: fatherOccupation ?? this.fatherOccupation,
      noOfBrothers: noOfBrothers ?? this.noOfBrothers,
      marriedBrothers: marriedBrothers ?? this.marriedBrothers,
      unmarriedBrothers: unmarriedBrothers ?? this.unmarriedBrothers,
      noOfSisters: noOfSisters ?? this.noOfSisters,
      marriedSisters: marriedSisters ?? this.marriedSisters,
      unmarriedSisters: unmarriedSisters ?? this.unmarriedSisters,
      hobbies: hobbies ?? this.hobbies,
      expectations: expectations ?? this.expectations,
      otherInformation: otherInformation ?? this.otherInformation,
      imageExtra1: imageExtra1 ?? this.imageExtra1,
      imageExtra2: imageExtra2 ?? this.imageExtra2,
      imageExtra3: imageExtra3 ?? this.imageExtra3,
      imageExtra4: imageExtra4 ?? this.imageExtra4,
      childrenStatus: childrenStatus ?? this.childrenStatus,
      imageProfile: imageProfile ?? this.imageProfile,
      imagePassport: imagePassport ?? this.imagePassport,
    );
  }

  factory User.fromMap(Map<String, dynamic> json) => User(
        personalProfile: json["personal_profile"] ?? "",
        name: json["name"] ?? "",
        fatherName: json["father_name"] ?? "",
        motherName: json["mother_name"] ?? "",
        wphone: json["wphone"] ?? "",
        contactOf: json["contact_of"] ?? "",
        dob: DateTime.parse(json["dob"]),
        age: int.parse((json["age"] ?? 0).toString()),
        gender: json["gender"] ?? "",
        height: json["height"] ?? "",
        state: json["state"] ?? "",
        city: json["city"] ?? "",
        maritialStatus: json["maritial_status"] ?? "",
        noOfBoys: int.parse((json["no_of_boys"] ?? 0).toString()),
        boysAges: (json["boys_ages"] ?? 0).toString(),
        noOfGirls: int.parse((json["no_of_girls"] ?? "").toString()),
        girlsAges: (json["girls_ages"] ?? "").toString(),
        physicalStatus: json["physical_status"] ?? "",
        handicapDetail: json["handicap_detail"] ?? "",
        education: json["education"] ?? "",
        occupation: json["occupation"] ?? "",
        occupationAddress: json["occupation_address"] ?? "",
        address: json["address"] ?? "",
        fatherStatus: json["father_status"] ?? "",
        motherStatus: json["mother_status"] ?? "",
        fatherOccupation: json["father_occupation"] ?? "",
        noOfBrothers: int.parse((json["no_of_brothers"] ?? 0).toString()),
        marriedBrothers: int.parse((json["married_brothers"] ?? 0).toString()),
        unmarriedBrothers:
            int.parse((json["unmarried_brothers"] ?? 0).toString()),
        noOfSisters: int.parse((json["no_of_sisters"] ?? 0).toString()),
        marriedSisters: int.parse((json["married_sisters"] ?? 0).toString()),
        unmarriedSisters:
            int.parse((json["unmarried_sisters"] ?? 0).toString()),
        hobbies: json["hobbies"] ?? "",
        expectations: json["expectations"] ?? "",
        otherInformation: json["other_information"] ?? "",
        imagePassport: json["image_passport"] ?? "",
        childrenStatus: json["children_status"] ?? "",
        imageProfile: json["image_profile"] ?? json["image_extra1"] ?? "",
        imageExtra1: json["image_extra1"] ?? "",
        imageExtra2: json["image_extra2"] ?? "",
        imageExtra3: json["image_extra3"] ?? "",
        imageExtra4: json["image_extra4"] ?? "",
      );

  factory User.empty() => User(
        personalProfile: "",
        name: "",
        age: 0,
        education: "",
        city: "",
        gender: "",
        wphone: "",
        imageExtra1: "",
        fatherName: "",
        motherName: "",
        contactOf: "",
        dob: DateTime.now(),
        height: "",
        state: "",
        maritialStatus: "",
        noOfBoys: 0,
        boysAges: "",
        noOfGirls: 0,
        girlsAges: "",
        physicalStatus: "",
        handicapDetail: "",
        occupation: "",
        occupationAddress: "",
        address: "",
        fatherStatus: "",
        motherStatus: "",
        fatherOccupation: "",
        noOfBrothers: 0,
        marriedBrothers: 0,
        unmarriedBrothers: 0,
        noOfSisters: 0,
        marriedSisters: 0,
        unmarriedSisters: 0,
        hobbies: "",
        expectations: "",
        otherInformation: "",
        imagePassport: "",
        childrenStatus: "",
        imageProfile: "",
        imageExtra2: "",
        imageExtra3: "",
        imageExtra4: "",
      );

  factory User.fromUnAuthMap(Map<String, dynamic> json) => User(
        personalProfile: json["personal_profile"] ?? "",
        name: json["name"] ?? "",
        age: int.parse((json["age"] ?? 0).toString()),
        education: json["education"] ?? "",
        city: json["city"] ?? "",
        gender: json["gender"] ?? "",
        wphone: json["wphone"] ?? "",
        imageExtra1: json["image_extra1"] ??
            "https://icon2.cleanpng.com/20180605/ijl/kisspng-computer-icons-image-file-formats-no-image-5b16ff0d2414b5.0787389815282337411478.jpg",
        fatherName: "",
        motherName: "",
        contactOf: "",
        dob: DateTime.now(),
        height: "",
        state: "",
        maritialStatus: "",
        noOfBoys: 0,
        boysAges: "",
        noOfGirls: 0,
        girlsAges: "",
        physicalStatus: "",
        handicapDetail: "",
        occupation: "",
        occupationAddress: "",
        address: "",
        fatherStatus: "",
        motherStatus: "",
        fatherOccupation: "",
        noOfBrothers: 0,
        marriedBrothers: 0,
        unmarriedBrothers: 0,
        noOfSisters: 0,
        marriedSisters: 0,
        unmarriedSisters: 0,
        hobbies: "",
        expectations: "",
        otherInformation: "",
        imagePassport: "",
        childrenStatus: "",
        imageProfile: "",
        imageExtra2: "",
        imageExtra3: "",
        imageExtra4: "",
      );

  Map<String, dynamic> toJson() => {
        "personal_profile": personalProfile,
        "name": name,
        "father_name": fatherName,
        "mother_name": motherName,
        "wphone": wphone,
        "contact_of": contactOf,
        "dob": dob.toString(),
        "age": age.toString(),
        "gender": gender,
        "height": height,
        "state": state,
        "city": city,
        "maritial_status": maritialStatus,
        "no_of_boys": noOfBoys.toString(),
        "boys_ages": boysAges,
        "no_of_girls": noOfGirls.toString(),
        "girls_ages": girlsAges,
        "physical_status": physicalStatus,
        "handicap_detail": handicapDetail,
        "education": education,
        "occupation": occupation,
        "occupation_address": occupationAddress,
        "address": address,
        "father_status": fatherStatus,
        "mother_status": motherStatus,
        "father_occupation": fatherOccupation,
        "no_of_brothers": noOfBrothers.toString(),
        "married_brothers": marriedBrothers.toString(),
        "unmarried_brothers": unmarriedBrothers.toString(),
        "no_of_sisters": noOfSisters.toString(),
        "married_sisters": marriedSisters.toString(),
        "unmarried_sisters": unmarriedSisters.toString(),
        "hobbies": hobbies,
        "expectations": expectations,
        "other_information": otherInformation,
        "image_extra1": imageExtra1,
        "image_extra2": imageExtra2,
        "image_extra3": imageExtra3,
        "image_extra4": imageExtra4,
      };
  Map<String, String> toJsonWithoutFile() => {
        "personal_profile": personalProfile,
        "name": name,
        "father_name": fatherName,
        "mother_name": motherName,
        "wphone": wphone,
        "contact_of": contactOf,
        "dob": dob.toString(),
        "age": age.toString(),
        "gender": gender,
        "height": height,
        "state": state,
        "city": city,
        "maritial_status": maritialStatus,
        "no_of_boys": noOfBoys.toString(),
        "boys_ages": boysAges,
        "no_of_girls": noOfGirls.toString(),
        "girls_ages": girlsAges,
        "physical_status": physicalStatus,
        "handicap_detail": handicapDetail,
        "education": education,
        "occupation": occupation,
        "occupation_address": occupationAddress,
        "address": address,
        "father_status": fatherStatus,
        "mother_status": motherStatus,
        "father_occupation": fatherOccupation,
        "no_of_brothers": noOfBrothers.toString(),
        "married_brothers": marriedBrothers.toString(),
        "unmarried_brothers": unmarriedBrothers.toString(),
        "no_of_sisters": noOfSisters.toString(),
        "married_sisters": marriedSisters.toString(),
        "unmarried_sisters": unmarriedSisters.toString(),
        "hobbies": hobbies,
        "expectations": expectations,
        "other_information": otherInformation,
      };

  Map<String, String> toJsonWithFile() => {
        "personal_profile": personalProfile,
        "name": name,
        "father_name": fatherName,
        "mother_name": motherName,
        "wphone": wphone,
        "contact_of": contactOf,
        "dob": dob.toString(),
        "age": age.toString(),
        "gender": gender,
        "height": height,
        "state": state,
        "city": city,
        "maritial_status": maritialStatus,
        "no_of_boys": noOfBoys.toString(),
        "boys_ages": boysAges,
        "no_of_girls": noOfGirls.toString(),
        "girls_ages": girlsAges,
        "physical_status": physicalStatus,
        "handicap_detail": handicapDetail,
        "education": education,
        "occupation": occupation,
        "occupation_address": occupationAddress,
        "address": address,
        "father_status": fatherStatus,
        "mother_status": motherStatus,
        "father_occupation": fatherOccupation,
        "no_of_brothers": noOfBrothers.toString(),
        "married_brothers": marriedBrothers.toString(),
        "unmarried_brothers": unmarriedBrothers.toString(),
        "no_of_sisters": noOfSisters.toString(),
        "married_sisters": marriedSisters.toString(),
        "unmarried_sisters": unmarriedSisters.toString(),
        "hobbies": hobbies,
        "expectations": expectations,
        "other_information": otherInformation,
        "image_extra1": imageExtra1,
        "image_extra2": imageExtra2,
        "image_extra3": imageExtra3,
        "image_extra4": imageExtra4,
      };

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String usersToJson() => json.encode(toJson());

  @override
  String toString() {
    return 'Users(personalProfile: $personalProfile, name: $name, fatherName: $fatherName, motherName: $motherName, wphone: $wphone, contactOf: $contactOf, dob: $dob, age: $age, gender: $gender, height: $height, state: $state, city: $city, maritialStatus: $maritialStatus, noOfBoys: $noOfBoys, boysAges: $boysAges, noOfGirls: $noOfGirls, girlsAges: $girlsAges, physicalStatus: $physicalStatus, handicapDetail: $handicapDetail, education: $education, occupation: $occupation, occupationAddress: $occupationAddress, address: $address, fatherStatus: $fatherStatus, motherStatus: $motherStatus, fatherOccupation: $fatherOccupation, noOfBrothers: $noOfBrothers, marriedBrothers: $marriedBrothers, unmarriedBrothers: $unmarriedBrothers, noOfSisters: $noOfSisters, marriedSisters: $marriedSisters, unmarriedSisters: $unmarriedSisters, hobbies: $hobbies, expectations: $expectations, otherInformation: $otherInformation, imageExtra1: $imageExtra1, imageExtra2: $imageExtra2, imageExtra3: $imageExtra3, imageExtra4: $imageExtra4, childrenStatus: $childrenStatus, imageProfile: $imageProfile, imagePassport: $imagePassport)';
  }

  String toWhatsapp() {
    return 'Name: $name,\nFather Name: $fatherName,\nMother Name: $motherName,\nWhatsApp Number: $wphone,\nDate of Birth: $dob,\nAge: $age,\nGender: $gender,\nHeight: $height,\nState: $state,\nCity: $city,\nMaritial Status: $maritialStatus,\nNo Of Boys: $noOfBoys,\nBoys Ages: $boysAges,\nNo Of Girls: $noOfGirls,\nGirls Ages: $girlsAges,\nPhysical Status: $physicalStatus,\nHandicap Detail: $handicapDetail,\nEducation: $education,\nOccupation: $occupation,\nOccupation Address: $occupationAddress,\nAddress: $address,\nFather Status: $fatherStatus,\nMother Status: $motherStatus,\nFather Occupation: $fatherOccupation,\nNo Of Brothers: $noOfBrothers,\nMarried Brothers: $marriedBrothers,\nUnmarried Brothers: $unmarriedBrothers,\nNo Of Sisters: $noOfSisters,\nMarried Sisters: $marriedSisters,\nUnmarried Sisters: $unmarriedSisters,\nHobbies: $hobbies,\nExpectations: $expectations,\nOther Information: $otherInformation,\n';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is User &&
        other.personalProfile == personalProfile &&
        other.name == name &&
        other.fatherName == fatherName &&
        other.motherName == motherName &&
        other.wphone == wphone &&
        other.contactOf == contactOf &&
        other.dob == dob &&
        other.age == age &&
        other.gender == gender &&
        other.height == height &&
        other.state == state &&
        other.city == city &&
        other.maritialStatus == maritialStatus &&
        other.noOfBoys == noOfBoys &&
        other.boysAges == boysAges &&
        other.noOfGirls == noOfGirls &&
        other.girlsAges == girlsAges &&
        other.physicalStatus == physicalStatus &&
        other.handicapDetail == handicapDetail &&
        other.education == education &&
        other.occupation == occupation &&
        other.occupationAddress == occupationAddress &&
        other.address == address &&
        other.fatherStatus == fatherStatus &&
        other.motherStatus == motherStatus &&
        other.fatherOccupation == fatherOccupation &&
        other.noOfBrothers == noOfBrothers &&
        other.marriedBrothers == marriedBrothers &&
        other.unmarriedBrothers == unmarriedBrothers &&
        other.noOfSisters == noOfSisters &&
        other.marriedSisters == marriedSisters &&
        other.unmarriedSisters == unmarriedSisters &&
        other.hobbies == hobbies &&
        other.expectations == expectations &&
        other.otherInformation == otherInformation &&
        other.imageExtra1 == imageExtra1 &&
        other.imageExtra2 == imageExtra2 &&
        other.imageExtra3 == imageExtra3 &&
        other.imageExtra4 == imageExtra4 &&
        other.childrenStatus == childrenStatus &&
        other.imageProfile == imageProfile &&
        other.imagePassport == imagePassport;
  }

  @override
  int get hashCode {
    return personalProfile.hashCode ^
        name.hashCode ^
        fatherName.hashCode ^
        motherName.hashCode ^
        wphone.hashCode ^
        contactOf.hashCode ^
        dob.hashCode ^
        age.hashCode ^
        gender.hashCode ^
        height.hashCode ^
        state.hashCode ^
        city.hashCode ^
        maritialStatus.hashCode ^
        noOfBoys.hashCode ^
        boysAges.hashCode ^
        noOfGirls.hashCode ^
        girlsAges.hashCode ^
        physicalStatus.hashCode ^
        handicapDetail.hashCode ^
        education.hashCode ^
        occupation.hashCode ^
        occupationAddress.hashCode ^
        address.hashCode ^
        fatherStatus.hashCode ^
        motherStatus.hashCode ^
        fatherOccupation.hashCode ^
        noOfBrothers.hashCode ^
        marriedBrothers.hashCode ^
        unmarriedBrothers.hashCode ^
        noOfSisters.hashCode ^
        marriedSisters.hashCode ^
        unmarriedSisters.hashCode ^
        hobbies.hashCode ^
        expectations.hashCode ^
        otherInformation.hashCode ^
        imageExtra1.hashCode ^
        imageExtra2.hashCode ^
        imageExtra3.hashCode ^
        imageExtra4.hashCode ^
        childrenStatus.hashCode ^
        imageProfile.hashCode ^
        imagePassport.hashCode;
  }
}

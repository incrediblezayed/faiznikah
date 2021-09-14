// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      personalProfile: fields[0] as String,
      name: fields[1] as String,
      fatherName: fields[2] as String,
      motherName: fields[3] as String,
      wphone: fields[4] as String,
      contactOf: fields[5] as String,
      dob: fields[6] as DateTime,
      age: fields[7] as int,
      gender: fields[8] as String,
      height: fields[9] as String,
      state: fields[10] as String,
      city: fields[11] as String,
      maritialStatus: fields[12] as String,
      noOfBoys: fields[13] as int,
      boysAges: fields[14] as String,
      noOfGirls: fields[15] as int,
      girlsAges: fields[16] as String,
      physicalStatus: fields[17] as String,
      handicapDetail: fields[18] as String,
      education: fields[19] as String,
      occupation: fields[20] as String,
      occupationAddress: fields[21] as String,
      address: fields[22] as String,
      fatherStatus: fields[23] as String,
      motherStatus: fields[24] as String,
      fatherOccupation: fields[25] as String,
      noOfBrothers: fields[26] as int,
      marriedBrothers: fields[27] as int,
      unmarriedBrothers: fields[28] as int,
      noOfSisters: fields[29] as int,
      marriedSisters: fields[30] as int,
      unmarriedSisters: fields[31] as int,
      hobbies: fields[32] as String,
      expectations: fields[33] as String,
      otherInformation: fields[34] as String,
      imageExtra1: fields[35] as String,
      imageExtra2: fields[36] as String,
      imageExtra3: fields[37] as String,
      imageExtra4: fields[38] as String,
      childrenStatus: fields[39] as String?,
      imageProfile: fields[40] as String?,
      imagePassport: fields[41] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(42)
      ..writeByte(0)
      ..write(obj.personalProfile)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.fatherName)
      ..writeByte(3)
      ..write(obj.motherName)
      ..writeByte(4)
      ..write(obj.wphone)
      ..writeByte(5)
      ..write(obj.contactOf)
      ..writeByte(6)
      ..write(obj.dob)
      ..writeByte(7)
      ..write(obj.age)
      ..writeByte(8)
      ..write(obj.gender)
      ..writeByte(9)
      ..write(obj.height)
      ..writeByte(10)
      ..write(obj.state)
      ..writeByte(11)
      ..write(obj.city)
      ..writeByte(12)
      ..write(obj.maritialStatus)
      ..writeByte(13)
      ..write(obj.noOfBoys)
      ..writeByte(14)
      ..write(obj.boysAges)
      ..writeByte(15)
      ..write(obj.noOfGirls)
      ..writeByte(16)
      ..write(obj.girlsAges)
      ..writeByte(17)
      ..write(obj.physicalStatus)
      ..writeByte(18)
      ..write(obj.handicapDetail)
      ..writeByte(19)
      ..write(obj.education)
      ..writeByte(20)
      ..write(obj.occupation)
      ..writeByte(21)
      ..write(obj.occupationAddress)
      ..writeByte(22)
      ..write(obj.address)
      ..writeByte(23)
      ..write(obj.fatherStatus)
      ..writeByte(24)
      ..write(obj.motherStatus)
      ..writeByte(25)
      ..write(obj.fatherOccupation)
      ..writeByte(26)
      ..write(obj.noOfBrothers)
      ..writeByte(27)
      ..write(obj.marriedBrothers)
      ..writeByte(28)
      ..write(obj.unmarriedBrothers)
      ..writeByte(29)
      ..write(obj.noOfSisters)
      ..writeByte(30)
      ..write(obj.marriedSisters)
      ..writeByte(31)
      ..write(obj.unmarriedSisters)
      ..writeByte(32)
      ..write(obj.hobbies)
      ..writeByte(33)
      ..write(obj.expectations)
      ..writeByte(34)
      ..write(obj.otherInformation)
      ..writeByte(35)
      ..write(obj.imageExtra1)
      ..writeByte(36)
      ..write(obj.imageExtra2)
      ..writeByte(37)
      ..write(obj.imageExtra3)
      ..writeByte(38)
      ..write(obj.imageExtra4)
      ..writeByte(39)
      ..write(obj.childrenStatus)
      ..writeByte(40)
      ..write(obj.imageProfile)
      ..writeByte(41)
      ..write(obj.imagePassport);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

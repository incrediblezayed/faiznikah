import 'dart:convert';

class TeamUserModel {
  String name;
  String location;
  String asset;
  TeamUserModel({
    required this.name,
    required this.location,
    this.asset = 'assets/images/user.png',
  });

  static List<TeamUserModel> team = [
    TeamUserModel(name: "Manzoor Deshmukh", location: 'Pune'),
    TeamUserModel(name: 'Shagufta Dandoti', location: 'Solapur'),
    TeamUserModel(name: 'Javed Sheikh', location: "Solapur"),
    TeamUserModel(name: "Prof.Dr.Mazhar Farooqui", location: "Aurangabad"),
    TeamUserModel(name: "Pvt.Farzana Shamim", location: "Aurangabad"),
    TeamUserModel(name: "Jamil Chiniwar", location: "Pune"),
    TeamUserModel(name: "Sajid Farash", location: "Solapur"),
    TeamUserModel(name: "Janab Syed Saab", location: "Pune"),
    TeamUserModel(name: "Junaid Tehsildar", location: "Pune"),
    TeamUserModel(name: "Naseer Sheikh", location: "Pune"),
    TeamUserModel(name: "nazir Ahmed Pasha Late", location: "Pune"),
    TeamUserModel(name: "Ayaz Sheikh", location: "Pune"),
    TeamUserModel(name: "A.Kayyum Dandoti", location: "Solapur"),
    TeamUserModel(name: "Arif Bijjar", location: "Solapur"),
    TeamUserModel(name: "Matin Gardener", location: "Solapur"),
    TeamUserModel(name: "Salim Sheikh", location: "Pune"),
    TeamUserModel(name: "Nazneen Sheikh Hill Darshan", location: "Pune"),
    TeamUserModel(name: "Mubeen Sheikh", location: "Sangamner"),
    TeamUserModel(name: "Intekhab Farash", location: "Pune"),
  ];

  TeamUserModel copyWith({
    String? name,
    String? location,
    String? asset,
  }) {
    return TeamUserModel(
      name: name ?? this.name,
      location: location ?? this.location,
      asset: asset ?? this.asset,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'location': location,
      'asset': asset,
    };
  }

  factory TeamUserModel.fromMap(Map<String, dynamic> map) {
    return TeamUserModel(
      name: map['name'],
      location: map['location'],
      asset: map['asset'],
    );
  }

  String toJson() => json.encode(toMap());

  factory TeamUserModel.fromJson(String source) =>
      TeamUserModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'TeamUserModel(name: $name, location: $location, asset: $asset)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TeamUserModel &&
        other.name == name &&
        other.location == location &&
        other.asset == asset;
  }

  @override
  int get hashCode => name.hashCode ^ location.hashCode ^ asset.hashCode;
}

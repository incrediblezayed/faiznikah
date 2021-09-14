import 'dart:convert';

import 'package:faiznikah/src/app/profile/screens/widgets/index.dart';
import 'package:faiznikah/src/models/user_model.dart';
import 'package:faiznikah/src/utils/api_services.dart';
import 'package:http/http.dart' as http;

class HomeService extends ApiServices {
  Future<List<User>> getFullUser() async {
    http.Response response = await http.get(profiles());
    print(response);
    if (response.statusCode == 200) {
      List<Map<String, dynamic>> data = jsonDecode(response.body);
      return data.map((e) => User.fromUnAuthMap(e)).toList();
    } else {
      throw "Error";
    }
  }
}

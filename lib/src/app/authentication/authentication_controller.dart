import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  RxBool _isLoggedIn = false.obs;
  bool get isLoggedIn => _isLoggedIn.value;
}

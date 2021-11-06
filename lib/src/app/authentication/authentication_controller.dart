import 'package:faiznikah/src/app/profile/screens/widgets/index.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  RxBool _isLoggedIn = false.obs;
  bool get isLoggedIn => _isLoggedIn.value;

  RxBool _otpSent = false.obs;
  bool get otpSent => _otpSent.value;

  RxBool _inProgress = false.obs;
  bool get inProgress => _inProgress.value;

  RxBool _verifyingOtp = false.obs;
  bool get verifyingOtp => _verifyingOtp.value;

  TextEditingController numberController = TextEditingController();
  List<TextEditingController> otpController =
      List.generate(4, (index) => TextEditingController());

  List<FocusNode> otpFocus = List.generate(4, (index) => FocusNode());
  
  void getOtp() async {
    _inProgress.value = true;
    await Future.delayed(Duration(seconds: 3));
    _inProgress.value = false;
    _otpSent.value = true;
  }
}

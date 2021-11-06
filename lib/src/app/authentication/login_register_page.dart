import 'package:faiznikah/src/app/authentication/authentication_controller.dart';
import 'package:faiznikah/src/utils/theme.dart';
import 'package:faiznikah/src/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AuthenticationPage extends StatelessWidget {
  static const id = "/auth";
  AuthenticationPage({Key? key}) : super(key: key);
  final AuthenticationController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: FaizNikahAppBar(
        text: "Login/Register",
        hasImage: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Image.asset(
              'assets/appicon/app_icon.png',
              scale: 1.5,
            ),
            Text(
              "Faiz Nikah",
              textScaleFactor: 3,
              style: TextStyle(
                color: AppColors.firstColor,
              ),
            ),
            TextField(
              style: TextStyle(fontSize: 20),
              controller: controller.numberController,
              maxLength: 10,
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: InputDecoration(
                  counterText: "",
                  contentPadding: EdgeInsets.all(10),
                  labelText: "Number",
                  labelStyle: TextStyle(fontSize: 18),
                  hintText: "Enter 10 Digits Mobile Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )),
            ),
            Obx(() => InkWell(
                  onTap: () {
                    controller.getOtp();
                  },
                  child: AnimatedContainer(
                      height: 40,
                      alignment: Alignment.center,
                      width: controller.inProgress ? 40 : size.width * 0.2,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.all(10),
                      decoration: ShapeDecoration(
                          shape: StadiumBorder(), color: AppColors.firstColor),
                      duration: Duration(milliseconds: 300),
                      child: controller.inProgress
                          ? SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                          : Text(
                              "Get OTP",
                              style: TextStyle(color: Colors.white),
                            )),
                )),
            SizedBox(
              height: 10,
            ),
            Obx(() => controller.otpSent
                ? Column(
                    children: [
                      AnimatedSwitcher(
                        duration: Duration(milliseconds: 800),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            for (int i = 0;
                                i < controller.otpController.length;
                                i++)
                              Container(
                                padding: EdgeInsets.all(3),
                                width: 45,
                                child: TextField(
                                  style: TextStyle(fontSize: 20),
                                  controller: controller.otpController[i],
                                  focusNode: controller.otpFocus[i],
                                  textAlign: TextAlign.center,
                                  textInputAction: TextInputAction.next,
                                  maxLength: 1,
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      if (i != 3)
                                        controller.otpFocus[i + 1]
                                            .requestFocus();
                                    } else {
                                      if (i != 0) {
                                        controller.otpFocus[i - 1]
                                            .requestFocus();
                                      }
                                    }
                                  },
                                  keyboardType: TextInputType.number,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  decoration: InputDecoration(
                                    counterText: "",
                                    labelStyle: TextStyle(fontSize: 18),
                                    contentPadding: EdgeInsets.zero,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        gapPadding: 0),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.getOtp();
                        },
                        child: AnimatedContainer(
                            height: 40,
                            alignment: Alignment.center,
                            width: controller.verifyingOtp ? 40 : 70,
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.all(10),
                            decoration: ShapeDecoration(
                                shape: StadiumBorder(),
                                color: AppColors.firstColor),
                            duration: Duration(milliseconds: 300),
                            child: controller.verifyingOtp
                                ? SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: Colors.white,
                                      strokeWidth: 2,
                                    ),
                                  )
                                : Text(
                                    "Verify",
                                    style: TextStyle(color: Colors.white),
                                  )),
                      ),
                    ],
                  )
                : Container())
          ],
        ),
      ),
    );
  }
}

import 'package:faiznikah/src/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Globals {
  final Params params = Params();

  bool checkImage(String? image) {
    return image != null &&
        image != "" &&
        image != "https://api.faiznikah.com/media/posts/default.jpeg";
  }

  String imageString(String image) {
    bool containsHttp = image.contains('http');
    if (containsHttp) {
      return image;
    } else {
      return "https://api.faiznikah.com" + image;
    }
  }

  Future<String?> getBottomSheet<String>(
      {required List<String> list,
      required void Function(String?) onTap,
      required RxString value}) {
    return Get.bottomSheet<String>(
      Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          children: list
              .map((e) => Obx(
                    () => ListTile(
                      title: Text(e.toString()),
                      onTap: () {
                        onTap(e);
                        Get.back();
                      },
                      trailing: value.value == e ? Icon(Icons.check) : null,
                    ),
                  ))
              .toList(),
        ),
      ),
      backgroundColor: Colors.white,
      enableDrag: true,
      isDismissible: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    );
  }

  GetBar snackBar(String? title, String message) {
    return GetBar(
      title: title,
      message: message,
      backgroundColor: AppColors.firstColor.withOpacity(0.8),
      barBlur: 5,
      snackPosition: SnackPosition.BOTTOM,
      duration: const Duration(seconds: 1),
    );
  }
}

class Params {
  final String userParam = "user";
  final String isPremiumParam = "isPremium";
}

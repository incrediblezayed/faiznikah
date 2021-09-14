import 'package:faiznikah/src/app/home/home_services.dart';
import 'package:faiznikah/src/utils/hive_data_helper.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController {
  final HomeService service = HomeService();
  final HiveDataHelper hiveDataHelper = Get.find();
  
}

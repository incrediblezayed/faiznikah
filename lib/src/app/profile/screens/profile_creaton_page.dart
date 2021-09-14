import 'package:faiznikah/src/app/profile/profile_controller.dart';
import 'package:faiznikah/src/app/profile/screens/widgets/family_information.dart';
import 'package:faiznikah/src/app/profile/screens/widgets/image_other_info.dart';
import 'package:faiznikah/src/app/profile/screens/widgets/marital_information.dart';
import 'package:faiznikah/src/app/profile/screens/widgets/occupation.dart';
import 'package:faiznikah/src/app/profile/screens/widgets/personal_info.dart';
import 'package:faiznikah/src/app/profile/screens/widgets/readonly_tabbar.dart';
import 'package:faiznikah/src/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileCreationPage extends StatefulWidget {
  static const id = "/profilecreation";
  ProfileCreationPage({Key? key}) : super(key: key);

  @override
  _ProfileCreationPageState createState() => _ProfileCreationPageState();
}

class _ProfileCreationPageState extends State<ProfileCreationPage>
    with TickerProviderStateMixin {
  List<Widget> getWidgets(ProfileController controller) => [
        PersonalInforMation(controller: controller),
        MaritalInformation(controller: controller),
        FamilyInformation(controller: controller),
        Occupation(controller: controller),
        ImageOtherInfo(controller: controller),
      ];
  final List<String> tabs = [
    "Personal\nInformation",
    "Marital\nInformation",
    "Family\nInformation",
    "Occupation",
    "Images &\nOther info",
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      initState: (state) {
        final controller = Get.find<ProfileController>();
        controller.initTabController(this);
      },
      builder: (controller) {
        TabController tabController = controller.tabController;
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'PROFILE CREATION FORM',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            centerTitle: true,
            backgroundColor: AppColors.secondColor,
            bottom: ReadOnlyTabBar(
              child: TabBar(
                  controller: tabController,
                  isScrollable: true,
                  tabs: tabs
                      .map((e) => Tab(
                            child: FittedBox(
                              alignment: Alignment.topLeft,
                              fit: BoxFit.scaleDown,
                              child: Text(e),
                            ),
                          ))
                      .toList()),
            ),
          ),
          body: Column(
            children: [
              Expanded(
                child: TabBarView(
                    physics: NeverScrollableScrollPhysics(),
                    controller: tabController,
                    children: getWidgets(controller)),
              ),
              //Obx(() =>
              StatefulBuilder(builder: (context, state) {
                return Container(
                  height: kToolbarHeight,
                  color: AppColors.secondColor,
                  child: Row(
                    children: [
                      if (tabController.index != 0)
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              controller.back();
                              state(() {});
                            },
                            child: Text(
                              "Back",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            print("next");
                            controller.next();
                            state(() {});
                          },
                          child: Text(
                            tabController.index == 4 ? "Submit" : "Next",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }), //)
            ],
          ),
        );
      },
    );
  }
}

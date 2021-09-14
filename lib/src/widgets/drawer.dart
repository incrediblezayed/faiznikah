import 'package:faiznikah/src/app/authentication/authentication_controller.dart';
import 'package:faiznikah/src/app/authentication/login_register_page.dart';
import 'package:faiznikah/src/app/home/screens/all_profile.dart';
import 'package:faiznikah/src/app/static/screens/advertisement.dart';
import 'package:faiznikah/src/app/static/screens/blog.dart';
import 'package:faiznikah/src/app/static/screens/contactus.dart';
import 'package:faiznikah/src/app/static/screens/event.dart';
import 'package:faiznikah/src/app/static/screens/successstories.dart';
import 'package:faiznikah/src/models/user_model.dart';
import 'package:faiznikah/src/utils/globals.dart';
import 'package:faiznikah/src/utils/screen_index.dart';
import 'package:faiznikah/src/utils/theme.dart';
import 'package:faiznikah/src/widgets/network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget with Globals {
  final AuthenticationController authenticationController = Get.find();
  AppDrawer();
  User? get user => hiveDataHelper.getUser();
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: AppColors.secondColor,
      child: ListView(
        children: [
          if (authenticationController.isLoggedIn)
            UserAccountsDrawerHeader(
                currentAccountPicture:
                    CustomNetworkImage(imageUrl: user!.imageExtra1),
                accountName: Text(user!.name),
                accountEmail: Text(user!.personalProfile)),
          const Divider(
            height: 0,
            thickness: 0.1,
            indent: 30,
            endIndent: 30,
            color: Colors.white,
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.home,
              color: Colors.white,
            ),
            onTap: () {
              Get.back();
            },
            title: Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.users,
              color: Colors.white,
            ),
            onTap: () {
              Get.toNamed(AllProfilePage.id);
            },
            title: Text(
              "All Profile",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          if (!authenticationController.isLoggedIn)
            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.userPlus,
                color: Colors.white,
              ),
              onTap: () async {
                Get.toNamed(AuthenticationPage.id);
              },
              title: Text(
                "Login/Register",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.textWidth,
              color: Colors.white,
            ),
            onTap: () {
              Get.toNamed(Blog.id);
            },
            title: Text(
              "BLOGS",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.meetup,
              color: Colors.white,
            ),
            onTap: () {
              Get.to(Events.id);
            },
            title: Text(
              "EVENT PAGE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.image,
              color: Colors.white,
            ),
            onTap: () {
              Get.toNamed(Advertisement.id);

              /// Navigator.of(context).pushNamed(MyRoutes.advertisementRoute);
            },
            title: Text(
              "ADVERTISEMENT",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.ups,
              color: Colors.white,
            ),
            onTap: () {
              Get.toNamed(SuccessStories.id);
              // Navigator.of(context).pushNamed(MyRoutes.successstoriesRoute);
            },
            title: Text(
              "SUCCESS STORIES",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.infoCircle,
              color: Colors.white,
            ),
            onTap: () {
              Get.toNamed(AboutUsPage.id);
              //Navigator.of(context).pushNamed(MyRoutes.aboutusRoute);
            },
            title: Text(
              "ABOUT US",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          ListTile(
            leading: FaIcon(
              FontAwesomeIcons.phone,
              color: Colors.white,
            ),
            onTap: () {
              Get.toNamed(ContactUs.id);
              //Navigator.of(context).pushNamed(MyRoutes.contactusRoute);
            },
            title: Text(
              "CONTACT US",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

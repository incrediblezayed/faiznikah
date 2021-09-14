import 'package:faiznikah/src/app/profile/profile_controller.dart';

import 'index.dart';

class ImageOtherInfo extends StatefulWidget {
  const ImageOtherInfo({Key? key, required this.controller}) : super(key: key);
  final ProfileController controller;
  @override
  _ImageOtherInfoState createState() => _ImageOtherInfoState();
}

class _ImageOtherInfoState extends State<ImageOtherInfo> {
  ProfileController get controller => widget.controller;

  String getImage(int i) {
    switch (i) {
      case 0:
        return controller.profileCreationModel.imageExtra2;
      case 1:
        return controller.profileCreationModel.imageExtra3;
      case 2:
      default:
        return controller.profileCreationModel.imageExtra4;
    }
  }

  void setImage(int i, String v) {
    switch (i) {
      case 0:
        controller.profileCreationModel.imageExtra2 = v;
        break;
      case 1:
        controller.profileCreationModel.imageExtra3 = v;
        break;
      case 2:
      default:
        controller.profileCreationModel.imageExtra4 = v;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: controller.otherInfo,
        child: Column(
          children: [
            Text("Main Picture"),
            ProfileImagePicker(
                image: controller.profileCreationModel.imageExtra1,
                setImage: (v) {
                  controller.profileCreationModel.imageExtra1 = v;
                  setState(() {});
                },
                isMain: true),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 3; i++)
                  ProfileImagePicker(
                      image: getImage(i),
                      setImage: (v) {
                        setImage(i, v);
                        setState(() {});
                      },
                      isMain: false)
              ],
            ),
            ProfileTextFeild(
              onChanged: (v) {
                controller.profileCreationModel.expectations = v;
              },
              labelText: "Expectations",
            ),
            ProfileTextFeild(
              onChanged: (v) {
                controller.profileCreationModel.otherInformation = v;
              },
              labelText: "Other Information",
            )
          ],
        ));
  }
}

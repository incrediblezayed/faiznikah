import 'dart:io';

import 'package:faiznikah/src/widgets/full_screen_image.dart';
import 'package:image_picker/image_picker.dart';

import 'index.dart';

class ProfileImagePicker extends StatefulWidget {
  const ProfileImagePicker(
      {Key? key,
      required this.image,
      required this.setImage,
      required this.isMain})
      : super(key: key);
  final String image;
  final bool isMain;
  final Function(String) setImage;
  @override
  _ProfileImagePickerState createState() => _ProfileImagePickerState();
}

class _ProfileImagePickerState extends State<ProfileImagePicker> {
  void pickImage() async {
    final ImagePicker imagePicker = ImagePicker();
    XFile? file = await imagePicker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      widget.setImage(file.path);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      child: InkWell(
        onTap: () {
          if (widget.image == "")
            pickImage();
          else {
            Get.dialog(Dialog(
              child: Material(
                type: MaterialType.transparency,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Text("Open Image"),
                      onTap: () {
                        Get.back();
                        Get.to(FullImage(
                          url: [widget.image],
                          isAsset: true,
                        ));
                      },
                    ),
                    ListTile(
                      title: Text("Change Image"),
                      onTap: () {
                        Get.back();
                        pickImage();
                      },
                    ),
                  ],
                ),
              ),
            ));
          }
        },
        child: Container(
          height: widget.isMain ? media.width * 0.5 : media.width * 0.25,
          width: widget.isMain ? media.width * 0.5 : media.width * 0.25,
          child: Container(
            child: widget.image == ""
                ? Image.asset("assets/images/noimage.png")
                : Image.file(File(widget.image)),
          ),
        ),
      ),
    );
  } //
}

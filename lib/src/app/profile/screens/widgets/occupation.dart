import 'package:faiznikah/src/app/profile/profile_controller.dart';

import 'index.dart';

class Occupation extends StatelessWidget {
  const Occupation({Key? key, required this.controller}) : super(key: key);
  final ProfileController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: controller.occupationInfo,
        child: Column(
          children: [
            ProfileTextFeild(
               validator: (input) {
                    if (input!.isEmpty) {
                      return "Field is Empty";
                    }
                     },
              onChanged: (v) {
                controller.profileCreationModel.occupation = v;
              },
              hintText: 'Detail for Servie / Business',
              labelText: 'Service / Business',
            ),
            ProfileTextFeild(
               validator: (input) {
                    if (input!.isEmpty) {
                      return "Field is Empty";
                    }
                    if(!input.contains(" ")){
                      return "Enter Full Address";
                    }
                     },
              onChanged: (v) =>
                  controller.profileCreationModel.occupationAddress = v,
              hintText: 'Please enter your service/business address',
              labelText: 'Service/Business Address',
            ),
            ProfileTextFeild(
               validator: (input) {
                    if (input!.isEmpty) {
                      return "Field is Empty";
                    }
                     },
              onChanged: (v) =>
                  controller.profileCreationModel.fatherOccupation = v,
              hintText: 'Please Enter Father Occupation',
              labelText: 'Father Occupation',
            )
          ],
        ),
      ),
    );
  }
}

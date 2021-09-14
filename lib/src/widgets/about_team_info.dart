import 'package:faiznikah/src/models/team_user_model.dart';
import 'package:flutter/material.dart';

class AboutTeamInfo extends StatelessWidget {
  final TeamUserModel teamUserModel;
  const AboutTeamInfo({Key? key, required this.teamUserModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      width: media.width > 500 ? media.width * 0.17 : media.width * 0.3,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 55,
              foregroundImage: AssetImage(teamUserModel.asset),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              teamUserModel.name,
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
              width: 110,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Text(teamUserModel.location),
          ],
        ),
      ),
    );
  }
}

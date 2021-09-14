import 'package:faiznikah/src/models/team_user_model.dart';
import 'package:faiznikah/src/utils/theme.dart';
import 'package:faiznikah/src/widgets/about_team_info.dart';
import 'package:faiznikah/src/widgets/appbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  static const id = "/about";
  Widget singleChildScrollView() => SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                aboutContent.toString(),
                textAlign: TextAlign.center,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    color: AppColors.secondColor,
                    child: const Center(
                        child: Text(
                      'OUR TEAM',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        ourTeamContent.toString(),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Wrap(
                        children: TeamUserModel.team
                            .map((e) => AboutTeamInfo(teamUserModel: e))
                            .toList(),
                      ))
                ],
              ),
            )
          ],
        ),
      );
  final String aboutContent =
      "Assalaam Walekum and Rahmatullah Barkathu\nFriends\nHaji Mehmed Isaac Farash Foundation Pune is a registered organization. Under this, along with Primary School, Sartaj Library, Roti Bank, Marriage Bureau, the marriage should be done with the right time and simplicity, the work of counseling has been going on continuously for the last 13 years.\nOf course, the best Mu'ashera begins with the best marriage.\nAllah Subhanu and Tala have made the Faiz Marriage Bureau a means of connecting the relationships above 5600 till date. Our responsibilities have been giving their valuable time for the well being and betterment of the shelter along with handling their domestic responsibilities well.\nSo far, successful relationships have been organized in 15 districts of the Faiz Marriage Bureau.In every procession, according to their wishes, a vow is made not to eat the food of the girl's house in the marriage.\nAs of now the offices are running in Aurangabad, Sangamner, Solapur and Head Office Pune.";
  final String ourTeamContent =
      "Almost the members are associated with the Faiz Marriage Bureau after retirement. Something is not with us today. But his contribution has been immense. May Allah accept their hard work and sacrifice. Ameen.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: FaizNikahAppBar(
          text: "About Us",
        ),
        body: singleChildScrollView());
  }
}

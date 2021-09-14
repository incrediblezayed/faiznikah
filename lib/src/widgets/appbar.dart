import 'package:faiznikah/src/app/profile/screens/widgets/index.dart';
import 'package:faiznikah/src/utils/theme.dart';

class FaizNikahAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/appicon/app_icon.png',
              height: kToolbarHeight + 10,
            ),
            SizedBox(
              width: 10,
            ),
            FittedBox(
              child: Text(
                'Faiz Nikah',
                style: TextStyle(
                  color: AppColors.firstColor,
                ),
                textScaleFactor: 1.5,
              ),
            ),
            Spacer(),
            IconButton(
                onPressed: () {
                  if (Scaffold.of(context).hasDrawer) {
                    Scaffold.of(context).openDrawer();
                  }
                  if (Scaffold.of(context).hasEndDrawer) {
                    Scaffold.of(context).openEndDrawer();
                  }
                },
                icon: Icon(Icons.menu)),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

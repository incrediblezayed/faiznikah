import 'package:faiznikah/src/app/profile/screens/widgets/index.dart';
import 'package:faiznikah/src/utils/theme.dart';

class FaizNikahAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color color;
  final String text;
  final bool hasImage;
  const FaizNikahAppBar(
      {Key? key,
      this.hasImage = true,
      this.color = Colors.white,
      this.text = "Faiz Nikah"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: color,
        child: Material(
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              if (hasImage)
                Image.asset(
                  'assets/appicon/app_icon.png',
                  height: kToolbarHeight + 10,
                )
              else if (Navigator.canPop(context))
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppColors.firstColor,
                    ))
              else
                Spacer(),
              SizedBox(
                width: 10,
              ),
              Container(
                alignment: Alignment.center,
                height: kToolbarHeight,
                child: FittedBox(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: AppColors.firstColor,
                    ),
                    textScaleFactor: 1.5,
                  ),
                ),
              ),
              Spacer(),
              if (Scaffold.of(context).hasDrawer ||
                  Scaffold.of(context).hasEndDrawer)
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
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

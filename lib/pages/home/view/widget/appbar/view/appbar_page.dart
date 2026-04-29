import 'package:expertgraphweb/global_export.dart';
import 'widget/expot.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, con) {
        double wide = con.maxWidth;
        return Container(
          height: 60,
          decoration: BoxDecoration(color: tertiary.withAlpha(30)),
          child: Row(
            children: [
              addHorizontalSpace(wide * 0.0001),
              Image.asset(Images.appLogo, width: 150),
              addHorizontalSpace(0.3),
              addExpand(),

              ListItem(title: 'Expertise', isColor: true, onTap: () {}),
              addHorizontalSpace(0.2),
              ListItem(title: 'How it Works', isColor: true, onTap: () {}),
              addHorizontalSpace(0.2),
              ListItem(title: 'Trust', isColor: true, onTap: () {}),
              addExpand(),

              GestureDetector(
                onTap: () => Get.toNamed(AppRoutes.signin, arguments: 0),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Regular',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Get.toNamed(AppRoutes.signin, arguments: 1),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 17, vertical: 8),
                  decoration: BoxDecoration(
                    color: secondary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: grayLightest,
                      fontSize: 14,
                      fontFamily: 'Regular',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              addHorizontalSpace(0.3),
            ],
          ),
        );
      },
    );
  }
}

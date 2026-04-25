import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/home/controller/home_controller.dart';

import 'drawer_item.dart';

Drawer buildMobileDrawer() => Drawer(
  backgroundColor: white,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.zero, // Removes rounded corners
  ),
  child: GetBuilder(
    init: HomeController(),
    builder: (c) => SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            alignment: Alignment.center,
            child: Image.asset(Images.appLogo, width: 200),
          ),
          const Divider(color: gray, thickness: 5),
          DrawerItem(
            icon: Icons.home,
            isColor: c.currentKey == c.expertiseKey,
            value: 'Expertise',
            onTap: () => c.scrollToSection(c.expertiseKey),
          ),
          const Divider(color: grayLightest, thickness: 1),
          DrawerItem(
            icon: Icons.info,
            isColor: c.currentKey == c.howKey,
            value: 'How It Works',
            onTap: () => c.scrollToSection(c.howKey),
          ),
          const Divider(color: grayLightest, thickness: 1),
          DrawerItem(
            icon: Icons.article,
            isColor: c.currentKey == c.trustKey,
            value: 'Trust',
            onTap: () => c.scrollToSection(c.trustKey),
          ),
          const Divider(color: grayLightest, thickness: 1),
        ],
      ),
    ),
  ),
);

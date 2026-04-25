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
            isColor: c.currentKey == c.homeKey,
            value: 'Home',
            onTap: () => c.scrollToSection(c.homeKey),
          ),
          const Divider(color: grayLightest, thickness: 1),
          DrawerItem(
            icon: Icons.info,
            isColor: c.currentKey == c.aboutKey,
            value: 'About',
            onTap: () => c.scrollToSection(c.aboutKey),
          ),
          const Divider(color: grayLightest, thickness: 1),
          DrawerItem(
            icon: Icons.article,
            isColor: c.currentKey == c.resumeKey,
            value: 'Resume',
            onTap: () => c.scrollToSection(c.resumeKey),
          ),
          const Divider(color: grayLightest, thickness: 1),
          DrawerItem(
            icon: Icons.work,
            isColor: c.currentKey == c.portfolioKey,
            value: 'Portfolio',
            onTap: () => c.scrollToSection(c.portfolioKey),
          ),
          const Divider(color: grayLightest, thickness: 1),
          DrawerItem(
            icon: Icons.badge,
            isColor: c.currentKey == c.certificateKey,
            value: 'Certificate',
            onTap: () => c.scrollToSection(c.certificateKey),
          ),
          const Divider(color: grayLightest, thickness: 1),
          DrawerItem(
            icon: Icons.call,
            isColor: c.currentKey == c.contactKey,
            value: 'Contact',
            onTap: () => c.scrollToSection(c.contactKey),
          ),
          const Divider(color: grayLightest, thickness: 1),
        ],
      ),
    ),
  ),
);

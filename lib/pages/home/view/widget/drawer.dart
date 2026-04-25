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
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: grayLightest,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.blueAccent.withAlpha(100),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset('', fit: BoxFit.cover),
                  ),
                ),
              ),
              addHorizontalSpace(0.1),
              Column(
                mainAxisAlignment: .start,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'SONU SINGH PARIHAR',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: black,
                    ),
                  ),
                  Text(
                    "Flutter Developer",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: black,
                    ),
                  ),
                ],
              ),
            ],
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

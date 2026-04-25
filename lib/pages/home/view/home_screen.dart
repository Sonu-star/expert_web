import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/home/view/widget/appbar/view/appbar_page.dart';
import 'package:expertgraphweb/pages/home/view/widget/expertise/view/expertise.dart';
import 'package:expertgraphweb/pages/home/controller/home_controller.dart';
import 'package:expertgraphweb/pages/home/view/widget/bottom/bottom.dart';
import 'package:expertgraphweb/pages/home/view/widget/how_work/view/how_work.dart';
import 'package:expertgraphweb/pages/home/view/widget/stop_search/view/stop_search.dart';
import 'package:expertgraphweb/pages/home/view/widget/top/view/top.dart';
import 'package:expertgraphweb/pages/home/view/widget/trust/view/trust.dart';
import 'widget/export.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    body: LayoutBuilder(
      builder: (context, constraint) {
        bool isDesktop = constraint.maxWidth >= 700;
        isDesktop ? Scaffold.of(context).closeDrawer() : null;

        return GetBuilder(
          init: HomeController(),
          builder: (c) {
            return CustomScrollView(
              controller: c.scrollController,
              slivers: [
                SliverAppBar(
                  pinned: true,
                  backgroundColor: tertiary,
                  elevation: isDesktop ? 0 : 20,
                  surfaceTintColor: tertiary.withAlpha(30),
                  automaticallyImplyLeading: false,
                  shadowColor: tertiary.withAlpha(30),
                  scrolledUnderElevation: isDesktop ? 0 : 20,
                  titleSpacing: 0,
                  actions: isDesktop
                      ? []
                      : [
                          GestureDetector(
                            onTap: () =>
                                Get.toNamed(AppRoutes.signin, arguments: 0),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
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
                            onTap: () =>
                                Get.toNamed(AppRoutes.signin, arguments: 1),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 17,
                                vertical: 8,
                              ),
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
                          addHorizontalSpace(0.1),
                        ],
                  leading: isDesktop
                      ? null
                      : Builder(
                          builder: (context) => IconButton(
                            icon: Icon(Icons.menu, color: Colors.black),
                            onPressed: () => Scaffold.of(context).openDrawer(),
                          ),
                        ),
                  title: isDesktop ? AppBarPage() : null,
                ),

                SliverToBoxAdapter(child: Top()),
                SliverToBoxAdapter(child: Expertise(key: c.expertiseKey)),
                SliverToBoxAdapter(child: HowWork(key: c.howKey)),
                SliverToBoxAdapter(child: Trust(key: c.trustKey)),
                SliverToBoxAdapter(child: StopSearch()),
                SliverToBoxAdapter(child: LovePage()),
              ],
            );
          },
        );
      },
    ),
    drawer: buildMobileDrawer(),
  );
}

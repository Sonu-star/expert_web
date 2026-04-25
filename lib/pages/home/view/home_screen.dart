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
                SliverToBoxAdapter(child: Expertise()),
                SliverToBoxAdapter(child: HowWork()),
                SliverToBoxAdapter(child: Trust()),
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

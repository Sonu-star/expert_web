import 'package:expertgraphweb/global_export.dart';
import 'widget/export.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, con) {
        double wide = con.maxWidth;
        return Scaffold(
          backgroundColor: const Color(0xFFF5F5F3),
          appBar: AppBar(title: navbar(), automaticallyImplyLeading: false),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: HeroWidget(wide: wide)),
              SliverToBoxAdapter(child: Header(wide: wide)),
              SliverToBoxAdapter(child: const SizedBox(height: 30)),
              SliverToBoxAdapter(child: EnquiryCard()),
            ],
          ),
        );
      },
    );
  }
}

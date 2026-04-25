import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/about/view/widget/header.dart';

class InfoCard extends StatelessWidget {
  final List<Widget> child;
  final String header;
  const InfoCard({super.key, required this.child, required this.header});

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        addVerticalSpace(0.5),
        Header(title: header),
        addVerticalSpace(0.1),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: child),
      ],
    ),
  );
}

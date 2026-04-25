import 'package:expertgraphweb/global_export.dart';

class PageCard extends StatelessWidget {
  final List<Widget> child;
  final String title;
  const PageCard({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    List<String> parts = title.split(' ');
    String first = parts[0];
    String second = parts.sublist(1).join(' ');
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
      child: Column(
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: [
          addVerticalSpace(0.2),
          Row(
            children: [
              Text(
                first,
                style: TextStyle(
                  fontSize: 32,
                  color: primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              addHorizontalSpace(0.1),
              Text(
                second,
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          addVerticalSpace(0.3),
          Column(children: child),
        ],
      ),
    );
  }
}

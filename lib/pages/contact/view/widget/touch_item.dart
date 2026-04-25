import 'package:expertgraphweb/global_export.dart';

class TouchItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  const TouchItem({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: .start,
    crossAxisAlignment: .start,
    children: [
      Icon(icon),
      addHorizontalSpace(0.1),
      Expanded(
        child: Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: gray,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

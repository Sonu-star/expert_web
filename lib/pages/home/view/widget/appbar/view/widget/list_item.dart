import 'package:expertgraphweb/global_export.dart';

class ListItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isColor;
  const ListItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.isColor,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Text(
      title,
      style: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        color: isColor ? black : black,
        fontFamily: 'Regular',
      ),
    ),
  );
}

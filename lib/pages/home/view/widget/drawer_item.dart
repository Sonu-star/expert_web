import 'package:expertgraphweb/global_export.dart';

class DrawerItem extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final bool isColor;
  final String value;
  const DrawerItem({
    super.key,
    required this.onTap,
    required this.icon,
    required this.value,
    required this.isColor,
  });

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () {
      onTap();
      Get.back();
    },
    child: Row(
      children: [
        addHorizontalSpace(0.2),
        Icon(icon, color: isColor ? red.withAlpha(150) : black, size: 20),
        addHorizontalSpace(0.1),

        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isColor ? primary : black,
          ),
        ),
        addExpand(),
        Icon(
          Icons.arrow_forward,
          color: isColor ? red.withAlpha(150) : black,
          size: 20,
        ),
        addHorizontalSpace(0.2),
      ],
    ),
  );
}

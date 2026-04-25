import 'package:expertgraphweb/global_export.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    required this.color,
    required this.onPressed,
    required this.title,
  });
  final VoidCallback onPressed;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) => TextButton(
    onPressed: onPressed,
    onHover: (value) {},
    child: Container(
      width: Get.width * 0.84,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: black,
        ),
      ),
    ),
  );
}

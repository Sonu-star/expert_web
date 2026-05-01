import 'package:expertgraphweb/global_export.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.wide, required this.text});
  final double wide;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed(AppRoutes.service);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF59E0B),
        padding: EdgeInsets.symmetric(
          horizontal: wide > 800 ? 15 : 5,
          vertical: wide > 800 ? 13 : 5,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Row(
        children: [
          const Icon(Icons.add, size: 16, color: Colors.black),
          SizedBox(width: wide > 800 ? 4 : 0),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Regular',
              fontSize: wide > 800 ? 14 : 10,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

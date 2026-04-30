import 'package:expertgraphweb/global_export.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.buttonName,
    required this.buttonColor,
    required this.onTap,
  });
  final String buttonName;
  final Color buttonColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          padding: const EdgeInsets.symmetric(vertical: 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          buttonName,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Regular',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

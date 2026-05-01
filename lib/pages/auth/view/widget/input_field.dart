import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/auth/controller/base_controller.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.controller,
    required this.c,
    required this.length,
    required this.hint,
  });
  final TextEditingController controller;
  final BaseController c;
  final int length;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLength: length,
      keyboardType: TextInputType.phone,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      style: const TextStyle(color: Colors.black),
      onChanged: (value) => c.buttonColorChanger(),
      decoration: InputDecoration(
        filled: true,
        counterText: "",
        fillColor: const Color(0xFFD1D5DB),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black54),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

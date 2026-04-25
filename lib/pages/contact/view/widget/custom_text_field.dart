import 'package:expertgraphweb/global_export.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
    this.controller, {
    super.key,
    this.value,
    this.name,
    this.prefix,
    this.lines = 1,
  });

  final bool? value;
  final TextEditingController controller;
  final String? name;
  final Widget? prefix;
  final int? lines;

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    child: TextFormField(
      cursorColor: green,
      controller: controller,
      maxLines: lines,
      decoration: InputDecoration(
        labelText: name,
        prefixIcon: prefix,
        counterText: '',
        contentPadding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: gray),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: green),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: gray),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: gray),
        ),
        labelStyle: TextStyle(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$name is required';
        }
        return null;
      },
    ),
  );
}

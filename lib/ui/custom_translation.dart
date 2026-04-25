import 'package:expertgraphweb/global_export.dart';

final storage = GetStorage();

class CustomTranslation extends StatefulWidget {
  const CustomTranslation({super.key});

  @override
  State<CustomTranslation> createState() => _CustomTranslationState();
}

class _CustomTranslationState extends State<CustomTranslation> {
  String dropdownvalue = storage.read('language') ?? "English";
  var items = ['English', 'हिंदी'];
  @override
  Widget build(BuildContext context) => Center(
    child: Container(
      height: 40,
      width: 130,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        border: Border.all(color: black),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const Icon(Icons.translate),
          addHorizontalSpace(0.1),
          DropdownButton<String>(
            underline: const SizedBox(),
            value: dropdownvalue,
            items: items
                .map(
                  (String value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  ),
                )
                .toList(),
            onChanged: (String? newValue) {
              updateAppLanguage(newValue);
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
        ],
      ),
    ),
  );
}

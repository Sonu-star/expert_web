import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/logistic/controller/logistic_controller.dart';
import 'package:expertgraphweb/pages/logistic/model/logistic_model.dart';

class WidgetItem extends StatelessWidget {
  const WidgetItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: LogisticController(),
      builder: (controller) {
        return Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            children: [
              _dropdownField(
                "Budget range",
                controller.selectedBudget!,
                budgetOptions,
                (val) => controller.budgetSelector(val),
              ),
              const SizedBox(height: 20),
              _dropdownField(
                "How urgent?",
                controller.selectedUrgency!,
                urgencyOptions,
                (val) => controller.urgencySelector(val),
              ),
              const SizedBox(height: 20),
              _dropdownField(
                "Preferred call timing",
                controller.selectedTiming!,
                timingOptions,
                (val) => controller.timingSelector(val),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _dropdownField(
    String label,
    String value,
    List<String> options,
    Function(String) onSelect,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Regular',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),

        PopupMenuButton<String>(
          onSelected: onSelect,
          surfaceTintColor: white,
          color: white,
          itemBuilder: (context) => options.map((e) {
            final isSelected = e == value;
            return PopupMenuItem(
              value: e,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: isSelected
                      ? const Color(0xFFF59E0B)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    if (isSelected) const Icon(Icons.check, size: 16),
                    const SizedBox(width: 6),
                    Text(
                      e,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Regular',
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),

          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(value), const Icon(Icons.keyboard_arrow_down)],
            ),
          ),
        ),
      ],
    );
  }
}

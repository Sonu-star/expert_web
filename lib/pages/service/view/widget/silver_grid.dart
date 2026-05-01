import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/service/controller/service_controller.dart';
import 'package:expertgraphweb/pages/service/model/service_model.dart';

class SilverGrid extends StatelessWidget {
  const SilverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ServiceController(),
      builder: (controller) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.builder(
            itemCount: categories.length,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 220,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 4,
            ),
            itemBuilder: (context, index) {
              final e = categories[index];
              final isSelected = controller.selectedCategory == e;
              return GestureDetector(
                onTap: () => controller.serviceSelector(e),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xFFEDE7DC) : Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isSelected
                          ? const Color(0xFFF59E0B)
                          : Colors.grey.shade300,
                    ),
                  ),
                  child: Text(e),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

import 'package:expertgraphweb/global_export.dart';

class BackDashboard extends StatelessWidget {
  const BackDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.offAndToNamed(AppRoutes.dashboard),
      child: Row(
        children: [
          const Icon(Icons.arrow_back, size: 18),
          const SizedBox(width: 6),
          Text(
            "Dashboard",
            style: TextStyle(fontSize: 14, fontFamily: 'Regular'),
          ),
        ],
      ),
    );
  }
}

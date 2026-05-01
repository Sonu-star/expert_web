import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/dashboard/view/widget/name_text.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.wide});
  final double wide;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: wide / 25, vertical: 80),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [primary, secondary]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "YOUR DASHBOARD",
            style: TextStyle(
              fontSize: 12,
              letterSpacing: 1.5,
              color: Colors.white60,
              fontFamily: 'Regular',
            ),
          ),
          const SizedBox(height: 10),
          NameTextWidget(name: 'SONU'),
        ],
      ),
    );
  }
}

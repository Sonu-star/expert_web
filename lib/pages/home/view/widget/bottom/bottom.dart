import 'package:expertgraphweb/global_export.dart';

class LovePage extends GetView {
  const LovePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (250 - Get.width * 0.2).clamp(100, 250),
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
      color: primary,
      child: Wrap(
        runAlignment: WrapAlignment.spaceEvenly,
        alignment: Get.width > 800
            ? WrapAlignment.spaceBetween
            : WrapAlignment.center,
        crossAxisAlignment: .center,
        runSpacing: Get.width / 25,
        children: [
          Image.asset(Images.appLogo, width: 200),
          Text(
            '© 2026 Klarity. Consulting, made personal.',
            style: TextStyle(fontSize: 15, color: white),
          ),
        ],
      ),
    );
  }
}

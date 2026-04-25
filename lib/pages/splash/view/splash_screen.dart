import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/splash/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    double size = width >= 1400
        ? width * 0.25
        : width >= 800
        ? width * 0.35
        : width * 0.4;
    double textSize = width >= 1400
        ? width * 0.02
        : width >= 800
        ? width * 0.03
        : width * 0.04;
    Get.put(SplashController());
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          decoration: const BoxDecoration(color: white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Images.appLogo, width: size, height: size),
              addVerticalSpace(0.2),
              Text(
                'Design with ❤ in India 🇮🇳!',
                style: TextStyle(
                  fontSize: textSize,
                  fontWeight: FontWeight.w400,
                  color: black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

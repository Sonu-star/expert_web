import 'package:expertgraphweb/global_export.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    navigation();
    super.onInit();
  }

  void navigation() async {
    // String? token = await SessionManager.getToken() ?? '';
    // bool onBoard = await SessionManager.getOnbaord() ?? false;

    Future.delayed(const Duration(seconds: 0), () {
      Get.toNamed(AppRoutes.home);

      // if (token.isNotEmpty) {
      // Get.toNamed(AppRoutes.dashboard);
      // } else {
      // if (onBoard) {
      // Get.toNamed(AppRoutes.onboard);
      // } else {
      // Get.toNamed(AppRoutes.generateOTP);
      // }
      // }
    });
  }
}

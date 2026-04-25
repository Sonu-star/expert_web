import 'package:expertgraphweb/global_export.dart';

Locale getAppLanguage(String language) {
  switch (language.toUpperCase()) {
    case 'ENGLISH':
      return const Locale('en', 'US');
    case 'हिंदी':
      return const Locale('hi', 'IN');
    default:
      return const Locale('en', 'US');
  }
}

Locale getLocalization() {
  return getAppLanguage(storage.read('language') ?? 'ENGLISH');
}

Future<void> updateAppLanguage(String? lang) async {
  final storage = GetStorage();
  final language = getAppLanguage(lang!);
  if (language != Get.locale) {
    await storage.write('language', lang);
    Get.updateLocale(language);
    snackBar("Language Changed", 'App language has been changed');
  }
}

void onLocalSetup(dynamic data, String fCMToken, String deviceId) async {
  final storage = GetStorage();
  await storage.write('mobile', data['mobile']);
  await storage.write('token', data['token']);
  await storage.write("isLOGGEDIN", true);
  await storage.write("user_type", data["user_type"]);
  // if (newCustomer == 'customer') {
  //   Get.offAllNamed(AppRoutes.PROFILE_SCREEN);
  // } else {
  //   controller.getFirebaseNotification(FCMToken, _deviceId);
  // }
}

void onClearLocalSetup() async {
  final storage = GetStorage();
  await storage.remove('mobile');
  await storage.remove('token');
  await storage.write('isLOGGEDIN', false);
  await storage.remove('user_type');
  await storage.remove('new');
  await storage.remove('name');
  await storage.remove('lastName');
  await storage.remove('avatar');
  await storage.read('user_id');
  await storage.remove('customer_id');

  // Get.offAllNamed(AppRoutes.LOGIN_SCREEN);
}

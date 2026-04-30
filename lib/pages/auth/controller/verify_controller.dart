import 'package:expertgraphweb/global_export.dart';

class VerifyController extends GetxController {
  TextEditingController otp = TextEditingController();
  Color buttonColor = gray;

  // @override
  // void onInit() {
  //   int val = Get.arguments ?? 0;

  //   update();
  //   super.onInit();
  // }

  void generateOtp() {
    if (otp.text.isEmpty) {
      errorSnackBar("Email", "Emial field is empty");
    }
    // else if (otp.text.isEmpty) {
    //   errorSnackBar("Password", "Password field is empty");
    // }
    else {
      snackBar('SUCESS', 'Create account success fully');
      Get.toNamed(AppRoutes.dashboard);
    }

    update();
  }

  void buttonColorChnager() {
    if (otp.text.isEmpty && otp.text.isEmpty) {
      buttonColor = gray;
    } else {
      buttonColor = tertiary;
    }
    update();
  }

  void verifyOtp() {
    if (otp.text.isEmpty) {
      errorSnackBar("Email", "Emial field is empty");
    } else if (otp.text.isEmpty) {
      errorSnackBar("Password", "Password field is empty");
    } else {
      snackBar('SUCESS', 'Login success fully');
      Get.toNamed(AppRoutes.dashboard);
    }
    update();
  }
}

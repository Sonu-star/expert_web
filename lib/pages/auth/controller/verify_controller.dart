import 'package:expertgraphweb/global_export.dart';
import 'base_controller.dart';

class VerifyController extends BaseController {
  void verifyOtp() {
    if (buttonColor != gray) {
      if (otp.text.isEmpty) {
        errorSnackBar("OTP", "OTP field is empty");
      } else if (otp.text.length < 6) {
        errorSnackBar("OTP", "OTP must be 6 digits");
      } else {
        snackBar('SUCESS', 'Login success fully');
        Get.toNamed(AppRoutes.dashboard);
      }
    }
    update();
  }
}

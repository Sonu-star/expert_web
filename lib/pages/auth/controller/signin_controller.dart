import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/auth/controller/base_controller.dart';

class SigninController extends BaseController {
  void generateOtp() {
    if (buttonColor != gray) {
      if (mobile.text.length < 10) {
        errorSnackBar("Mobile Number", "Enter a valid 10-digit mobile number.");
      } else if (!RegExp(r'^[6-9]\d{9}$').hasMatch(mobile.text)) {
        errorSnackBar("Mobile Number", "Enter a valid mobile number");
      } else {
        snackBar('SUCESS', 'Create account success fully');
        Get.toNamed(AppRoutes.verifyOtp);
      }
    }
    update();
  }
}

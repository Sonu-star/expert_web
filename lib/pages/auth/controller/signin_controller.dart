import 'package:expertgraphweb/global_export.dart';

class SigninController extends GetxController {
  TextEditingController mobile = TextEditingController();
  Color buttonColor = gray;

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

  void buttonColorChnager() {
    if (mobile.text.isEmpty) {
      buttonColor = gray;
    } else {
      buttonColor = tertiary;
    }
    update();
  }

  String? validateMobile(String? value) {
    if (value == null || value.isEmpty) {
      return "Mobile number is required";
    }

    if (value.length < 10) {
      return "Mobile number must be 10 digits";
    }

    if (!RegExp(r'^[6-9]\d{9}$').hasMatch(value)) {
      return "Enter a valid mobile number";
    }

    return null;
  }
}

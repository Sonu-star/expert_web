import 'package:expertgraphweb/global_export.dart';

class BaseController extends GetxController {
  TextEditingController otp = TextEditingController();
  TextEditingController mobile = TextEditingController();
  Color buttonColor = gray;

  void buttonColorChanger() {
    if (mobile.text.isEmpty && otp.text.isEmpty) {
      buttonColor = gray;
    } else {
      buttonColor = tertiary;
    }
    update();
  }
}

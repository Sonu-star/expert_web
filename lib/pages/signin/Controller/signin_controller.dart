import 'package:expertgraphweb/global_export.dart';

class SigninController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String title = '';
  String description = '';
  String buttonName = '';
  String signin = '';
  String signinNav = '';

  @override
  void onInit() {
    int val = Get.arguments ?? 0;
    if (val == 0) {
      title = 'Create your account';
      description = 'Find the right consultant in 48 hours.';
      buttonName = 'Sign In';
      signin = 'New to ExpertGraph?  ';
      signinNav = 'Create one';
    } else {
      title = 'Welcome back';
      description = 'Sign in to track your enquiries.';
      buttonName = 'Create Account';
      signin = 'Already have an account?  ';
      signinNav = 'Sign in';
    }
    update();
    super.onInit();
  }

  void createAccount() {
    if (email.text.isEmpty) {
      errorSnackBar("Email", "Emial field is empty");
    } else if (password.text.isEmpty) {
      errorSnackBar("Password", "Password field is empty");
    } else {
      snackBar('SUCESS', 'Create account success fully');
      Get.toNamed(AppRoutes.dashboard);
    }

    update();
  }

  void login() {
    if (email.text.isEmpty) {
      errorSnackBar("Email", "Emial field is empty");
    } else if (password.text.isEmpty) {
      errorSnackBar("Password", "Password field is empty");
    } else {
      snackBar('SUCESS', 'Login success fully');
      Get.toNamed(AppRoutes.dashboard);
    }

    update();
  }

  void nav(String nav) {
    if (nav == 'Sign in') {
      title = 'Welcome back';
      description = 'Sign in to track your enquiries.';
      buttonName = 'Sign In';
      signin = 'New to ExpertGraph?  ';
      signinNav = 'Create one';
    } else {
      title = 'Create your account';
      description = 'Find the right consultant in 48 hours.';
      buttonName = 'Create Account';
      signin = 'Already have an account?  ';
      signinNav = 'Sign in';
    }
    update();
  }
}

import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/auth/controller/signin_controller.dart';
import 'widget/export.dart';

class SigninScreen extends GetView<SigninController> {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: SigninController(),
        builder: (controller) {
          return Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [primary, primary, secondary]),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    LogoImage(width: 200),
                    const SizedBox(height: 40),
                    Header(title: 'Sign up with mobile'),
                    const SizedBox(height: 10),
                    Description(title: 'Sign in to track your enquiries.'),
                    const SizedBox(height: 40),
                    Container(
                      width: 450,
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        color: primary.withAlpha(100),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white.withAlpha(20)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          /// Email
                          _label("Mobile Number"),
                          const SizedBox(height: 15),
                          InputField(
                            controller: controller.mobile,
                            hint: 'Enter you Mobile number',
                            length: 10,
                            c: controller,
                          ),
                          const SizedBox(height: 50),
                          AuthButton(
                            buttonName: "Generate OTP",
                            buttonColor: controller.buttonColor,
                            onTap: () => controller.generateOtp(),
                          ),

                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// Label widget
  Widget _label(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontFamily: "Regular",
        color: Colors.white70,
      ),
    );
  }
}

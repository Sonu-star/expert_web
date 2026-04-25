import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/signin/Controller/signin_controller.dart';
import 'package:flutter/gestures.dart';

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
                    /// Logo
                    Image.asset(Images.appLogo, width: 200),
                    const SizedBox(height: 40),

                    /// Heading
                    Text(
                      controller.title,
                      style: TextStyle(
                        fontSize: 35,
                        fontFamily: "Bold",
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      controller.description,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Regular',
                        color: Colors.white70,
                      ),
                    ),

                    const SizedBox(height: 40),

                    /// Card
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
                          _label("Email"),
                          const SizedBox(height: 8),
                          _inputField('Enter you Email', controller.email),

                          const SizedBox(height: 20),

                          /// Password
                          _label("Password"),
                          const SizedBox(height: 8),
                          _inputField(
                            "Enter Your password",
                            controller.password,
                            obscure: true,
                          ),

                          const SizedBox(height: 30),

                          /// Button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () =>
                                  controller.buttonName == 'Sign In'
                                  ? controller.login()
                                  : controller.createAccount(),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF59E0B),
                                padding: const EdgeInsets.symmetric(
                                  vertical: 18,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: Text(
                                controller.buttonName,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Regular',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 20),

                          /// Footer
                          Center(
                            child: RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Regular',
                                  color: Colors.white60,
                                ),
                                children: [
                                  TextSpan(text: controller.signin),
                                  TextSpan(
                                    text: controller.signinNav,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        controller.nav(controller.signinNav);
                                      },
                                    style: TextStyle(
                                      color: Color(0xFFF59E0B),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
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

  /// Input field
  Widget _inputField(
    String hint,
    TextEditingController c, {
    bool obscure = false,
  }) {
    return TextField(
      controller: c,
      obscureText: obscure,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFD1D5DB),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black54),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/auth/controller/verify_controller.dart';
import 'widget/export.dart';

class VerifyScreen extends GetView<VerifyController> {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: VerifyController(),
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
                    Header(title: 'Verify your number'),
                    const SizedBox(height: 10),
                    Description(title: 'Enter the OTP sent to your mobile'),
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
                          _label("OTP"),
                          const SizedBox(height: 15),
                          _inputField(
                            'Enter your 6 digit otp',
                            6,
                            controller.otp,
                          ),
                          const SizedBox(height: 50),
                          AuthButton(
                            buttonName: 'Verify OTP',
                            buttonColor: controller.buttonColor,
                            onTap: () => controller.verifyOtp(),
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

  /// Input field
  Widget _inputField(
    String hint,
    int length,
    TextEditingController c, {
    bool obscure = false,
  }) {
    return TextField(
      controller: c,
      obscureText: obscure,
      maxLength: length,
      keyboardType: TextInputType.phone,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      style: const TextStyle(color: Colors.black),
      onChanged: (value) => controller.buttonColorChnager(),
      decoration: InputDecoration(
        filled: true,
        counterText: "",
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

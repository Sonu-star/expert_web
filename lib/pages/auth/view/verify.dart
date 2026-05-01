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
                          LabelWidget(text: "OTP"),
                          const SizedBox(height: 15),
                          InputField(
                            controller: controller.otp,
                            hint: 'Enter your 6 digit otp',
                            length: 6,
                            c: controller,
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
}

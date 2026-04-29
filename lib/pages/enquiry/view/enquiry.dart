import 'package:expertgraphweb/global_export.dart';

class EnquiryScreen extends StatefulWidget {
  const EnquiryScreen({super.key});

  @override
  State<EnquiryScreen> createState() => _EnquiryScreenState();
}

class _EnquiryScreenState extends State<EnquiryScreen> {
  final TextEditingController controller = TextEditingController();
  int maxLength = 2000;

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F3),
      appBar: AppBar(title: navbar(), automaticallyImplyLeading: false),
      body: LayoutBuilder(
        builder: (context, con) {
          double wide = con.maxWidth;
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: wide > 800 ? wide / 4 : wide / 25,
                    vertical: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          _progressBar(true),
                          const SizedBox(width: 12),
                          _progressBar(true),
                          const SizedBox(width: 12),
                          _progressBar(false),
                        ],
                      ),

                      const SizedBox(height: 40),

                      /// Heading
                      Text(
                        "Walk us through it.",
                        style: TextStyle(
                          fontSize: wide > 1200
                              ? 48
                              : wide > 8
                              ? wide / 25
                              : wide / 20,
                          fontFamily: 'Bold',
                          color: Colors.black,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Text(
                        "The more specific, the faster we can match you with the right person.",
                        style: TextStyle(
                          fontSize: wide > 1200
                              ? 16
                              : wide > 800
                              ? wide / 80
                              : wide / 70,
                          fontFamily: 'Regular',
                          color: Colors.grey.shade600,
                        ),
                      ),

                      const SizedBox(height: 40),

                      /// Label
                      Text(
                        "Describe your need",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Regular',
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 10),

                      TextField(
                        controller: controller,
                        maxLength: maxLength,
                        textAlignVertical: TextAlignVertical.top,
                        maxLines: 10,
                        minLines: 10,
                        style: const TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                          hintText:
                              "What's the situation, what have you tried, what does success look like?",
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.all(16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: const BorderSide(
                              color: Color(0xFFF59E0B),
                            ),
                          ),
                        ),
                        onChanged: (_) => setState(() {}),
                      ),

                      const SizedBox(height: 30),

                      /// Footer
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Back",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Regular',
                                color: Colors.black87,
                              ),
                            ),

                            /// Continue Button
                            ElevatedButton(
                              onPressed: controller.text.isEmpty
                                  ? null
                                  : () {
                                      Get.toNamed(AppRoutes.logistic);
                                    },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: controller.text.isEmpty
                                    ? const Color(0xFFFCD9B6)
                                    : const Color(0xFFF59E0B),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 32,
                                  vertical: 18,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "Continue",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Regular',
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  const Icon(
                                    Icons.arrow_forward,
                                    size: 18,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  /// Progress bar widget
  Widget _progressBar(bool active) {
    return Expanded(
      child: Container(
        height: 6,
        decoration: BoxDecoration(
          color: active ? const Color(0xFFF59E0B) : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

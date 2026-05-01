import 'package:expertgraphweb/global_export.dart';
import 'widget/export.dart';

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
                          StepLine(active: true),
                          StepLine(active: true),
                          StepLine(active: false),
                        ],
                      ),
                      sliverHeight(40),
                      EnquiryHeader(
                        wide: wide,
                        text1: "Walk us through it.",
                        text2: "",
                        text3: "",
                      ),
                      sliverHeight(10),
                      EnquiryDescription(
                        wide: wide,
                        desc:
                            "The more specific, the faster we can match you with the right person.",
                      ),
                      sliverHeight(40),
                      EnquiryLabel(text: 'Describe your need'),
                      sliverHeight(10),
                      InputField(
                        controller: controller,
                        maxLength: maxLength,
                        onChanged: (_) {
                          setState(() {});
                        },
                      ),
                      sliverHeight(30),
                      EnquiryBottonButton(
                        type: false,
                        now: () => Get.back(),
                        next: () {
                          Get.toNamed(AppRoutes.logistic);
                        },
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
}

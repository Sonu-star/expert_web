import 'package:expertgraphweb/global_export.dart';
import 'widget/export.dart';

class ServiceFormScreen extends StatefulWidget {
  const ServiceFormScreen({super.key});

  @override
  State<ServiceFormScreen> createState() => _ServiceFormScreenState();
}

class _ServiceFormScreenState extends State<ServiceFormScreen> {
  String selectedCategory = "Finance";
  TextEditingController controller = TextEditingController();

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
      body: LayoutBuilder(
        builder: (context, constrants) {
          var wide = constrants.maxWidth;
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: wide < 800 ? 20 : wide / 4,
                  ),
                  child: Column(
                    children: [
                      sliverHeight(40),
                      Row(
                        children: [
                          StepLine(active: true),
                          StepLine(active: false),
                          StepLine(active: false),
                        ],
                      ),

                      sliverHeight(40),
                      EnquiryHeader(
                        wide: wide,
                        text1: "What kind of ",
                        text2: "expertise",
                        text3: " do you need?",
                      ),
                      sliverHeight(10),
                      EnquiryDescription(
                        wide: wide,
                        desc:
                            'Pick a domain and give your enquiry a clear title.',
                      ),
                      sliverHeight(30),
                      EnquiryLabel(text: "Category"),
                      sliverHeight(16),
                      SilverGrid(),
                      EnquiryLabel(text: "Headline"),
                      sliverHeight(10),
                      ServiceInput(wide: wide, controller: controller),
                      sliverHeight(30),
                      EnquiryBottonButton(
                        type: true,
                        now: () {},
                        next: () => Get.toNamed(AppRoutes.enquiry),
                      ),
                      sliverHeight(30),
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

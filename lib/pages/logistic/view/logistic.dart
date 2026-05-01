import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/logistic/view/widget/export.dart';

class LogisticsScreen extends StatefulWidget {
  const LogisticsScreen({super.key});

  @override
  State<LogisticsScreen> createState() => _LogisticsScreenState();
}

class _LogisticsScreenState extends State<LogisticsScreen> {
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
        builder: (context, con) {
          double wide = con.maxWidth;
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: wide > 700 ? wide / 5 : 20,
                    vertical: 40,
                  ),
                  child: Column(
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
                        text1: "Last bit. ",
                        text2: "Logistics.",
                        text3: "",
                      ),
                      sliverHeight(10),
                      EnquiryDescription(
                        wide: wide,
                        desc:
                            "Helps us pick someone available and within your range.",
                      ),
                      sliverHeight(40),
                      WidgetItem(),
                      sliverHeight(40),
                      EnquiryBottonButton(
                        type: false,
                        now: () => Get.back(),
                        next: () => Get.offAndToNamed(AppRoutes.detail),
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

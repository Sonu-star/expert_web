import 'package:expertgraphweb/global_export.dart';
import 'widget/export.dart';

class EnquiryDetailsScreen extends GetView {
  const EnquiryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tertiary.withAlpha(10),
      body: LayoutBuilder(
        builder: (context, constrants) {
          var wide = constrants.maxWidth;
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: wide <= 600 ? 10 : 80,
              vertical: 40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackDashboard(),
                sliverHeight(30),
                Row(
                  children: [
                    StatusPill(),
                    const SizedBox(width: 10),
                    Text(
                      "Legal",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Regular',
                        color: gray,
                      ),
                    ),
                  ],
                ),
                sliverHeight(16),
                Text(
                  "knklkjn nij",
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: 'Regular',
                    color: Colors.black,
                  ),
                ),
                sliverHeight(6),
                Text(
                  "Submitted April 25th, 2026",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Regular',
                    color: Colors.grey.shade600,
                  ),
                ),
                sliverHeight(30),
                InfoCard(),
                sliverHeight(30),
                DetailCard(
                  budget: "₹1L – ₹5L",
                  urgency: "This week",
                  time: "Anytime",
                ),
                sliverHeight(30),
                BriefCard(text: "lkdcmedkcdepceporef fer"),
              ],
            ),
          );
        },
      ),
    );
  }
}

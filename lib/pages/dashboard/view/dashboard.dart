import 'package:expertgraphweb/global_export.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F3),
      appBar: AppBar(title: navbar(), automaticallyImplyLeading: false),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: _hero()),

          SliverToBoxAdapter(
            child: Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Title Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Enquiries",
                              style: TextStyle(
                                fontSize: 36,
                                color: Colors.black,
                                fontFamily: 'Bold',
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              "Track every consultant request from match to connection.",
                              style: TextStyle(
                                fontFamily: 'Regular',
                                fontSize: 14,
                                color: Colors.grey.shade600,
                              ),
                            ),
                          ],
                        ),

                        primaryButton("New enquiry"),
                      ],
                    ),

                    const SizedBox(height: 30),

                    /// Enquiry Card
                    _enquiryCard(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// ================= HERO =================
  Widget _hero() {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 80),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [primary, secondary]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "YOUR DASHBOARD",
            style: TextStyle(
              fontSize: 12,
              letterSpacing: 1.5,
              color: Colors.white60,
              fontFamily: 'Regular',
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Welcome back, ",
                  style: TextStyle(
                    fontSize: 42,
                    fontFamily: 'Bold',
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: "SONU.",
                  style: TextStyle(
                    fontSize: 42,
                    fontFamily: 'Bold',
                    color: Color(0xFFF59E0B),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// ================= ENQUIRY CARD =================
  Widget _enquiryCard() {
    return GestureDetector(
      onTap: () => Get.rootDelegate.toNamed(AppRoutes.detail),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: .start,
          children: [
            /// Left
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    /// Status pill
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFDE68A),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 6,
                            height: 6,
                            decoration: const BoxDecoration(
                              color: secondary,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            "Finding consultant",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Bold',
                              color: secondary,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(width: 10),

                    Text(
                      "Recruitment",
                      style: TextStyle(
                        fontFamily: 'Regular',
                        fontSize: 13,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                Text(
                  "jhgsvuaSY6767A",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Regular',

                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  "Submitted 3 days ago",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: 'Regular',

                    color: gray,
                  ),
                ),
              ],
            ),

            /// Arrow
            const Icon(Icons.arrow_forward, size: 20, color: primary),
          ],
        ),
      ),
    );
  }
}

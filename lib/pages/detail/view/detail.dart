import 'package:expertgraphweb/global_export.dart';

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
                /// Back
                Row(
                  children: [
                    const Icon(Icons.arrow_back, size: 18),
                    const SizedBox(width: 6),
                    Text(
                      "Dashboard",
                      style: TextStyle(fontSize: 14, fontFamily: 'Regular'),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                /// Status row
                Row(
                  children: [
                    _statusPill(),
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

                const SizedBox(height: 16),

                /// Title
                Text(
                  "knklkjn nij",
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: 'Regular',
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  "Submitted April 25th, 2026",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Regular',
                    color: Colors.grey.shade600,
                  ),
                ),

                const SizedBox(height: 30),

                /// Info card
                _infoBanner(),

                const SizedBox(height: 30),

                /// Summary cards
                Row(
                  children: [
                    Expanded(child: _smallCard("BUDGET", "₹1L – ₹5L")),
                    const SizedBox(width: 20),
                    Expanded(child: _smallCard("URGENCY", "This week")),
                    const SizedBox(width: 20),
                    Expanded(child: _smallCard("PREFERRED TIMING", "Anytime")),
                  ],
                ),

                const SizedBox(height: 30),

                /// Brief card
                _briefCard(),
              ],
            ),
          );
        },
      ),
    );
  }

  /// ================= STATUS =================
  Widget _statusPill() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
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
              color: Colors.orange,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 6),
          Text(
            "Finding consultant",
            style: TextStyle(fontSize: 12, fontFamily: 'Regular'),
          ),
        ],
      ),
    );
  }

  /// ================= INFO BANNER =================
  Widget _infoBanner() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFF59E0B).withAlpha(26),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.auto_awesome, color: Color(0xFFF59E0B)),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "We're on it",
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Regular',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Our team is hand-picking the right specialist for you. Expect to hear back within 48 hours.",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Regular',
                    color: gray,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// ================= SMALL CARD =================
  Widget _smallCard(String label, String value) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Regular',
              letterSpacing: 1.2,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Bold',
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  /// ================= BRIEF =================
  Widget _briefCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "YOUR BRIEF",
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Regular',
              letterSpacing: 1.2,
              color: Colors.grey.shade600,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "lkdcmedkcdepceporef fer",
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Regular',
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

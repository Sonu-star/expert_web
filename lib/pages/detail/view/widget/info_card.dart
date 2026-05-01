import 'package:expertgraphweb/global_export.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
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
}

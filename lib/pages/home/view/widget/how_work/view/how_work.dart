import 'package:expertgraphweb/global_export.dart';

class HowWork extends StatelessWidget {
  const HowWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 60),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [primary, secondary],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "HOW IT WORKS",
            style: TextStyle(
              fontSize: 12,
              letterSpacing: 1.5,
              color: Color(0xFFF59E0B),
              fontWeight: FontWeight.w600,
              fontFamily: 'Regular',
            ),
          ),

          const SizedBox(height: 20),

          /// Heading
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "From question to expert\nin ",
                  style: TextStyle(
                    fontSize: 48,
                    height: 1.2,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Bold',
                  ),
                ),
                TextSpan(
                  text: "under 48 hours.",
                  style: TextStyle(
                    fontSize: 48,
                    color: Color(0xFFF59E0B),
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Bold',
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 60),

          /// Steps Row
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: const [
              StepItem(
                number: "01",
                title: "Tell us your need",
                description:
                    "Share your industry, the challenge, your budget and timing. Two minutes.",
              ),
              StepItem(
                number: "02",
                title: "We hand-match",
                description:
                    "Our team picks the right specialist from our vetted network — not an algorithm.",
              ),
              StepItem(
                number: "03",
                title: "Pay securely",
                description:
                    "Once you approve the match, pay through our protected checkout. No retainers.",
              ),
              StepItem(
                number: "04",
                title: "Start solving",
                description:
                    "We make the introduction within hours. You take it from there.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StepItem extends StatelessWidget {
  final String number;
  final String title;
  final String description;

  const StepItem({
    super.key,
    required this.number,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 24),
      width: Get.width / 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Number + Line
          Row(
            children: [
              Text(
                number,
                style: TextStyle(
                  fontSize: 48,
                  color: const Color(0xFF6B4A2E),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Bold',
                ),
              ),
              const SizedBox(width: 12),
              Container(height: 1, width: 40, color: Colors.white24),
            ],
          ),

          const SizedBox(height: 20),

          /// Title
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: 'Bold',
            ),
          ),

          const SizedBox(height: 10),

          /// Description
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              height: 1.6,
              color: Colors.white70,
              fontFamily: 'Regular',
            ),
          ),
        ],
      ),
    );
  }
}

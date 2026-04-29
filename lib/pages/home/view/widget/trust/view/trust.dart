import 'package:expertgraphweb/global_export.dart';

class Trust extends StatelessWidget {
  const Trust({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, con) {
        double wide = con.maxWidth;
        return Container(
          color: tertiary.withAlpha(20),
          padding: EdgeInsets.symmetric(horizontal: wide / 25, vertical: 50),
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .start,
            children: [
              /// Small label
              Text(
                "TRUSTED BY BUILDERS",
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 1.5,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Regular',
                ),
              ),

              const SizedBox(height: 16),

              /// Heading
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Real outcomes. ",
                      style: TextStyle(
                        fontSize: 48,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Bold',
                      ),
                    ),
                    TextSpan(
                      text: "Real fast.",
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
              const SizedBox(height: 36),

              Wrap(
                runSpacing: 40,
                spacing: 40,
                children: const [
                  Expanded(
                    child: TestimonialCard(
                      text:
                          "We needed a retail ops expert in 72 hours for a store launch. Klarity matched us with someone who'd already done it ten times.",
                      name: "Anaya Verma",
                      role: "Founder, Forma Studio",
                    ),
                  ),
                  Expanded(
                    child: TestimonialCard(
                      text:
                          "Skipped weeks of recruiter calls. The branding consultant they paired us with reshaped our positioning end-to-end.",
                      name: "Rohan Mehta",
                      role: "CEO, Northwind",
                    ),
                  ),
                  Expanded(
                    child: TestimonialCard(
                      text:
                          "I was hesitant about pay-per-match. Turned out to be the only model that made sense — no retainer, real expertise.",
                      name: "Priya Shankar",
                      role: "Director, Levant Realty",
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class TestimonialCard extends StatelessWidget {
  final String text;
  final String name;
  final String role;

  const TestimonialCard({
    super.key,
    required this.text,
    required this.name,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      width: Get.width / 3.5,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Stars
          Row(
            children: List.generate(
              5,
              (index) => const Padding(
                padding: EdgeInsets.only(right: 4),
                child: Icon(Icons.star, size: 16, color: Color(0xFFF59E0B)),
              ),
            ),
          ),

          const SizedBox(height: 16),

          /// Quote
          Text(
            '"$text"',
            style: TextStyle(
              fontSize: 18,
              height: 1.6,
              color: Colors.black87,
              fontFamily: 'Regular',
            ),
          ),

          const SizedBox(height: 20),

          Divider(color: Colors.grey.shade300),

          const SizedBox(height: 16),

          /// Name
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Regular',
            ),
          ),

          const SizedBox(height: 4),

          /// Role
          Text(
            role,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade600,
              fontFamily: 'Regular',
            ),
          ),
        ],
      ),
    );
  }
}

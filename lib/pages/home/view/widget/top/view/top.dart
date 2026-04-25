import 'package:expertgraphweb/global_export.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(Get.width * 0.06),
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
          /// Top subtle bar
          Container(
            width: 350,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(14),
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: gray),
            ),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  margin: EdgeInsets.only(left: 5),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF59E0B),
                    shape: BoxShape.circle,
                  ),
                ),
                Text(
                  '   Now matching consultants across 9 industries',
                  style: TextStyle(color: white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),

          /// Heading
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "The right consultant.\n",
                  style: TextStyle(
                    fontSize: Get.width * 0.07,
                    height: 1.1,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Bold',
                  ),
                ),
                TextSpan(
                  text: "Found for you.",
                  style: TextStyle(
                    fontSize: Get.width * 0.07,
                    color: Color(0xFFF59E0B),
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Bold',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          /// Description
          SizedBox(
            width: 600,
            child: Text(
              "Tell us what you're solving. We hand-match you with a vetted expert in real estate, retail, recruitment, branding, business and beyond — so you skip the search and start solving.",
              style: TextStyle(
                fontSize: 16,
                height: 1.6,
                color: Colors.white70,
                fontFamily: "Regular",
              ),
            ),
          ),

          const SizedBox(height: 40),

          /// Buttons
          Row(
            children: [
              /// Primary Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF59E0B),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 18,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "Submit your enquiry",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: black,
                        fontFamily: 'Regular',
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

              const SizedBox(width: 20),

              /// Secondary Button
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white.withAlpha(53)),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 18,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Text(
                  "See how it works",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Regular',
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 60),

          /// Bottom Stats
          Wrap(
            spacing: 20,
            runSpacing: 20,
            crossAxisAlignment: .center,
            children: [
              /// Avatars
              SizedBox(
                width: 130,
                child: Row(
                  children: List.generate(
                    4,
                    (index) => Transform.translate(
                      offset: Offset(
                        index > 0 ? (-index * 8) : 0,
                        0,
                      ), // y = -20 means upar move (negative margin)

                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF59E0B),
                          shape: BoxShape.circle,
                          border: Border.all(color: primary, width: 2),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Text(
                "200+ matched this month",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                  fontFamily: 'Regular',
                ),
              ),

              Get.width > 600
                  ? Container(width: 1, height: 20, color: gray)
                  : SizedBox(),

              Text(
                "No retainers. Pay per match.",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white70,
                  fontFamily: 'Regular',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

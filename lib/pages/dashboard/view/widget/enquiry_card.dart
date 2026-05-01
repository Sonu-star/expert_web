import 'package:expertgraphweb/global_export.dart';

class EnquiryCard extends StatelessWidget {
  const EnquiryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(AppRoutes.detail),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
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

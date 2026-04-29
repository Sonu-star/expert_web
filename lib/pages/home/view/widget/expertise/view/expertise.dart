import 'package:expertgraphweb/global_export.dart';

class Expertise extends StatelessWidget {
  const Expertise({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, con) {
        double wide = con.maxWidth;
        return Container(
          color: tertiary.withAlpha(10),
          padding: EdgeInsets.symmetric(horizontal: wide / 25, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Label
              Text(
                "EXPERTISE ON TAP",
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 1.5,
                  color: black.withAlpha(150),
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
                      text: "Whatever you're ",
                      style: TextStyle(
                        fontSize: 42,
                        color: black,
                        fontFamily: 'Bold',
                      ),
                    ),
                    TextSpan(
                      text: "building",
                      style: TextStyle(
                        fontSize: 42,
                        color: tertiary,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Bold',
                      ),
                    ),
                    TextSpan(
                      text: ",\nthere's a specialist for it.",
                      style: TextStyle(
                        fontSize: 42,
                        color: Colors.black,
                        fontFamily: 'Bold',
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              /// Subtitle
              Text(
                "Nine domains. Hundreds of vetted consultants. One enquiry to find your match.",
                style: TextStyle(
                  fontSize: 16,
                  color: black.withAlpha(150),
                  fontFamily: 'Regular',
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 40),

              /// Grid
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: gray),
                ),
                child: ClipRRect(
                  borderRadius: .circular(20),
                  child: Wrap(
                    children: [
                      ExpertiseCard(
                        wide: wide,
                        icon: Icons.home_work_outlined,
                        title: "Real Estate",
                        subtitle: "Acquisition, leasing, dev advisory",
                      ),
                      ExpertiseCard(
                        wide: wide,
                        icon: Icons.storefront_outlined,
                        title: "Retail",
                        subtitle: "Operations, merchandising, growth",
                      ),
                      ExpertiseCard(
                        wide: wide,
                        icon: Icons.group_outlined,
                        title: "Recruitment",
                        subtitle: "Talent strategy & exec search",
                      ),
                      ExpertiseCard(
                        wide: wide,
                        icon: Icons.business_center_outlined,
                        title: "Business",
                        subtitle: "Strategy, ops, expansion",
                      ),
                      ExpertiseCard(
                        wide: wide,
                        icon: Icons.auto_awesome_outlined,
                        title: "Branding",
                        subtitle: "Identity, positioning, narrative",
                      ),
                      ExpertiseCard(
                        wide: wide,
                        icon: Icons.memory_outlined,
                        title: "Technology",
                        subtitle: "Architecture, product, AI",
                      ),
                      ExpertiseCard(
                        wide: wide,
                        icon: Icons.account_balance_wallet_outlined,
                        title: "Finance",
                        subtitle: "Fundraising, modeling, M&A",
                      ),
                      ExpertiseCard(
                        wide: wide,
                        icon: Icons.gavel_outlined,
                        title: "Legal",
                        subtitle: "Contracts, compliance, IP",
                      ),
                      ExpertiseCard(
                        wide: wide,
                        icon: Icons.campaign_outlined,
                        title: "Marketing",
                        subtitle: "Performance, content, GTM",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ExpertiseCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final double wide;

  const ExpertiseCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.wide,
  });

  @override
  State<ExpertiseCard> createState() => _ExpertiseCardState();
}

class _ExpertiseCardState extends State<ExpertiseCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: AnimatedContainer(
        width: widget.wide > 600 ? widget.wide / 3.4 : 500,
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: _getBackgroundColor(),
          border: Border.all(color: grayLightest),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Icon
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: grayLightest,
              ),
              child: Icon(widget.icon, size: 20),
            ),

            const SizedBox(height: 20),

            /// Title
            Text(
              widget.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 8),

            /// Subtitle
            Text(
              widget.subtitle,
              style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }

  Color _getBackgroundColor() {
    Color c = white;
    if (isHover) {
      c = secondary.withAlpha(20);
    } else {
      c = white;
    }
    return c;
  }
}

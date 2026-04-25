import 'package:expertgraphweb/global_export.dart';

class LogisticsScreen extends StatefulWidget {
  const LogisticsScreen({super.key});

  @override
  State<LogisticsScreen> createState() => _LogisticsScreenState();
}

class _LogisticsScreenState extends State<LogisticsScreen> {
  String? budget = "₹25L+";
  String? urgency = "Within 2 weeks";
  String? timing = "Anytime";

  final List<String> budgetOptions = [
    "Under ₹25,000",
    "₹25,000 – ₹1L",
    "₹1L – ₹5L",
    "₹5L – ₹25L",
    "₹25L+",
    "Open / discuss",
  ];

  final List<String> urgencyOptions = [
    "This week",
    "Within 2 weeks",
    "This month",
    "Flexible",
  ];

  final List<String> timingOptions = [
    "Weekday mornings",
    "Weekday afternoons",
    "Weekday evenings",
    "Weekends",
    "Anytime",
  ];

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
      appBar: AppBar(title: navbar()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Row(
                children: [
                  _bar(true),
                  const SizedBox(width: 10),
                  _bar(true),
                  const SizedBox(width: 10),
                  _bar(true),
                ],
              ),
            ),
            SliverToBoxAdapter(child: const SizedBox(height: 40)),
            SliverToBoxAdapter(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Last bit. ",
                      style: TextStyle(
                        fontSize: 48,
                        fontFamily: 'Bold',
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "Logistics.",
                      style: TextStyle(
                        fontSize: 48,
                        fontFamily: 'Bold',
                        color: Color(0xFFF59E0B),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: const SizedBox(height: 10)),
            SliverToBoxAdapter(
              child: Text(
                "Helps us pick someone available and within your range.",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Regular',
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            SliverToBoxAdapter(child: const SizedBox(height: 40)),
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  children: [
                    _dropdownField(
                      "Budget range",
                      budget!,
                      budgetOptions,
                      (val) => setState(() => budget = val),
                    ),
                    const SizedBox(height: 20),
                    _dropdownField(
                      "How urgent?",
                      urgency!,
                      urgencyOptions,
                      (val) => setState(() => urgency = val),
                    ),
                    const SizedBox(height: 20),
                    _dropdownField(
                      "Preferred call timing",
                      timing!,
                      timingOptions,
                      (val) => setState(() => timing = val),
                    ),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: const SizedBox(height: 40)),

            SliverToBoxAdapter(
              child: GestureDetector(
                onTap: () => Get.back(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Back",
                      style: TextStyle(fontSize: 16, fontFamily: 'Regular'),
                    ),

                    ElevatedButton(
                      onPressed: () {
                        Get.toNamed(AppRoutes.detail);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF59E0B),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 18,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Submit enquiry",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontFamily: 'Regular',
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Icon(Icons.check, color: Colors.black),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// ================= CUSTOM DROPDOWN =================
  Widget _dropdownField(
    String label,
    String value,
    List<String> options,
    Function(String) onSelect,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Regular',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),

        PopupMenuButton<String>(
          onSelected: onSelect,
          itemBuilder: (context) => options.map((e) {
            final isSelected = e == value;
            return PopupMenuItem(
              value: e,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  color: isSelected
                      ? const Color(0xFFF59E0B)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    if (isSelected) const Icon(Icons.check, size: 16),
                    const SizedBox(width: 6),
                    Text(
                      e,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Regular',
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),

          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(value), const Icon(Icons.keyboard_arrow_down)],
            ),
          ),
        ),
      ],
    );
  }

  Widget _bar(bool active) {
    return Expanded(
      child: Container(
        height: 6,
        decoration: BoxDecoration(
          color: active ? const Color(0xFFF59E0B) : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

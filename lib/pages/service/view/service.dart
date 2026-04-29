import 'package:expertgraphweb/global_export.dart';

class ServiceFormScreen extends StatefulWidget {
  const ServiceFormScreen({super.key});

  @override
  State<ServiceFormScreen> createState() => _ServiceFormScreenState();
}

class _ServiceFormScreenState extends State<ServiceFormScreen> {
  String selectedCategory = "Finance";
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      setState(() {});
    });
    super.initState();
  }

  final List<String> categories = [
    "Real Estate",
    "Retail",
    "Recruitment",
    "Business",
    "Branding",
    "Technology",
    "Finance",
    "Legal",
    "Marketing",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F3),
      appBar: AppBar(title: navbar(), automaticallyImplyLeading: false),

      body: LayoutBuilder(
        builder: (context, constrants) {
          var wide = constrants.maxWidth;
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: wide < 800 ? 20 : wide / 4,
            ),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: const SizedBox(height: 40)),

                /// Step Indicator
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      _stepLine(active: true),
                      _stepLine(),
                      _stepLine(),
                    ],
                  ),
                ),

                SliverToBoxAdapter(child: const SizedBox(height: 40)),

                // /// Heading
                SliverToBoxAdapter(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "What kind of ",
                          style: TextStyle(
                            fontSize: 42,
                            color: Colors.black,
                            fontFamily: 'Bold',
                          ),
                        ),
                        TextSpan(
                          text: "expertise",
                          style: TextStyle(
                            fontSize: 42,
                            fontFamily: 'Bold',
                            color: Color(0xFFF59E0B),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: " do you need?",
                          style: TextStyle(
                            fontFamily: "Bold",
                            fontSize: 42,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: const SizedBox(height: 10)),

                SliverToBoxAdapter(
                  child: Text(
                    "Pick a domain and give your enquiry a clear title.",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Regular',
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),

                SliverToBoxAdapter(child: const SizedBox(height: 30)),

                // /// Category label
                SliverToBoxAdapter(
                  child: Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Regular',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SliverToBoxAdapter(child: const SizedBox(height: 16)),

                SliverPadding(
                  padding: const EdgeInsets.all(16),
                  sliver: SliverGrid(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 220,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 4,
                    ),
                    delegate: SliverChildBuilderDelegate((context, index) {
                      final e = categories[index];
                      final isSelected = selectedCategory == e;

                      return GestureDetector(
                        onTap: () => setState(() => selectedCategory = e),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? const Color(0xFFEDE7DC)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isSelected
                                  ? const Color(0xFFF59E0B)
                                  : Colors.grey.shade300,
                            ),
                          ),
                          child: Text(e),
                        ),
                      );
                    }, childCount: categories.length),
                  ),
                ),

                // /// Headline
                SliverToBoxAdapter(
                  child: Text(
                    "Headline",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Regular',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SliverToBoxAdapter(child: const SizedBox(height: 10)),

                SliverToBoxAdapter(
                  child: SizedBox(
                    width: Get.width / 1.5,
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Enter your enquiry title",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(child: const SizedBox(height: 30)),

                // /// Bottom Actions
                SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Get.back(),
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Regular',
                            color: Colors.black87,
                          ),
                        ),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed(AppRoutes.enquiry);
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
                              "Continue",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Regular',
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
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
                    ],
                  ),
                ),
                SliverToBoxAdapter(child: const SizedBox(height: 30)),
              ],
            ),
          );
        },
      ),
    );
  }

  /// Step line widget
  Widget _stepLine({bool active = false}) {
    return Expanded(
      child: Container(
        height: 4,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: active ? const Color(0xFFF59E0B) : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

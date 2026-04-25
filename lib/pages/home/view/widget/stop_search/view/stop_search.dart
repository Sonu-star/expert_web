import 'package:expertgraphweb/global_export.dart';

class StopSearch extends StatelessWidget {
  const StopSearch({super.key});

  @override
  Widget build(BuildContext context) {
    double wide = Get.width;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 100,
        horizontal: (Get.width * 0.07),
      ),
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
      width: Get.width,
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(colors: [primary, secondary]),
      ),
      child: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          Text(
            'Stop Searching.',
            style: TextStyle(
              color: white,
              fontSize: wide / 15,
              fontFamily: 'Bold',
            ),
          ),
          Text(
            'Start Solving.',
            style: TextStyle(
              color: tertiary,
              fontSize: wide / 15,
              fontFamily: 'Bold',
            ),
          ),
          Text(
            'Submit your first enquiry today. We\'ll come back within 48 hours with your match.',
            textAlign: TextAlign.center,
            style: TextStyle(color: gray, fontSize: 20, fontFamily: 'Regular'),
          ),

          addVerticalSpace(0.3),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFF59E0B),
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 0,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Get my consultant",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: 'Regular',
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.arrow_forward, size: 18, color: Colors.black),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

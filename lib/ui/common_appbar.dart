import 'package:expertgraphweb/global_export.dart';

Widget navbar() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Logo
        Image.asset(Images.appLogo, width: 150),

        /// Right actions
        Row(
          children: [
            primaryButton("New enquiry"),
            const SizedBox(width: 16),
            Container(
              width: 36,
              height: 36,
              decoration: const BoxDecoration(
                color: Color(0xFF0F172A),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: const Text("S", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ],
    ),
  );
}

/// ================= BUTTON =================
Widget primaryButton(String text) {
  return ElevatedButton(
    onPressed: () {
      Get.toNamed(AppRoutes.service);
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFF59E0B),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
    child: Row(
      children: [
        const Icon(Icons.add, size: 16, color: Colors.black),
        const SizedBox(width: 6),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Regular',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

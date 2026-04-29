import 'package:expertgraphweb/global_export.dart';

Widget navbar() {
  return LayoutBuilder(
    builder: (context, con) {
      double wide = con.maxWidth;
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(Images.appLogo, width: 150),
            Row(
              children: [
                primaryButton("New enquiry", wide),
                const SizedBox(width: 16),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.profile);
                  },
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                      color: Color(0xFF0F172A),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "S",
                      style: TextStyle(color: Colors.white),
                    ),
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

/// ================= BUTTON =================
Widget primaryButton(String text, double wide) {
  return ElevatedButton(
    onPressed: () {
      Get.toNamed(AppRoutes.service);
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFF59E0B),
      padding: EdgeInsets.symmetric(
        horizontal: wide > 800 ? 15 : 5,
        vertical: wide > 800 ? 13 : 5,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    ),
    child: Row(
      children: [
        const Icon(Icons.add, size: 16, color: Colors.black),
        SizedBox(width: wide > 800 ? 4 : 0),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Regular',
            fontSize: wide > 800 ? 14 : 10,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}

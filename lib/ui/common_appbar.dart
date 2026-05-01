import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/dashboard/view/widget/primary_button.dart';

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
                PrimaryButton(text: "New enquiry", wide: wide),
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

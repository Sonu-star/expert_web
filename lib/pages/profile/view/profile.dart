import 'package:expertgraphweb/global_export.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F3),
      body: LayoutBuilder(
        builder: (context, con) {
          double wide = con.maxWidth;
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: wide > 1000 ? wide / 3 : wide / 20,
              vertical: 40,
            ),
            child: ListView(
              children: [
                Text(
                  "YOUR PROFILE",
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 1.5,
                    fontFamily: 'Regular',
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                sliverHeight(10),

                /// Heading
                Text(
                  "Personal details",
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: "Bold",
                    color: Colors.black,
                  ),
                ),
                sliverHeight(30),

                /// Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    children: const [
                      ProfileField(
                        label: "Email",
                        hint: "sonusinghparihar09@gmail.com",
                        enabled: false,
                      ),
                      SizedBox(height: 20),
                      ProfileField(label: "Your name", hint: "SONU SINGH"),
                      SizedBox(height: 20),
                      ProfileField(label: "Profession", hint: "developer"),
                      SizedBox(height: 20),
                      ProfileField(label: "Phone", hint: "+91 7270808132"),
                      SizedBox(height: 20),
                      ProfileField(label: "Location", hint: "india"),
                    ],
                  ),
                ),

                sliverHeight(30),

                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF59E0B),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 18,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      "Save changes",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: 'Regular',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// ================= FIELD =================
class ProfileField extends StatelessWidget {
  final String label;
  final String hint;
  final bool enabled;

  const ProfileField({
    super.key,
    required this.label,
    required this.hint,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Regular',
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        sliverHeight(8),
        TextField(
          enabled: enabled,
          controller: TextEditingController(text: hint),
          style: TextStyle(fontSize: 14, fontFamily: 'Regular'),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFF9F9F9),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 14,
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: const BorderSide(color: Color(0xFFF59E0B)),
            ),
          ),
        ),
      ],
    );
  }
}

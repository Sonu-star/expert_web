import 'package:expertgraphweb/global_export.dart';
import 'touch_item.dart';

class TouchSection extends StatelessWidget {
  const TouchSection({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
    width: Get.width / 3.5,
    child: Column(
      mainAxisAlignment: .start,
      crossAxisAlignment: .start,
      children: [
        Text(
          'Get in touch',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        addVerticalSpace(0.2),
        TouchItem(
          icon: Icons.phone_android,
          title: "Phone",
          value: "7270808132",
        ),
        addVerticalSpace(0.2),
        TouchItem(
          icon: Icons.chat_bubble,
          title: "Whatsapp",
          value: '8181970023',
        ),
        addVerticalSpace(0.2),
        TouchItem(
          icon: Icons.location_city,
          title: "Address",
          value:
              'A-1728 Awas Vikas Hanspuram Naubasta Kanpur Uttar Pradesh Inadia-208027',
        ),
        addVerticalSpace(0.2),
        TouchItem(
          icon: Icons.mail,
          title: "Email",
          value: 'sonusinghparihar09@gmail.com',
        ),
      ],
    ),
  );
}

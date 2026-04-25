import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/contact/view/widget/message_section.dart';
import 'package:expertgraphweb/pages/contact/view/widget/touch_section.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageCard(
      title: "Contact Details",
      child: [
        Wrap(
          crossAxisAlignment: .start,
          spacing: 70,
          runSpacing: 70,
          children: [MessageSection(), TouchSection()],
        ),
      ],
    );
  }
}

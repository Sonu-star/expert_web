import 'package:expertgraphweb/global_export.dart';
import 'header.dart';
import 'package:expertgraphweb/pages/contact/controller/contact_controller.dart';
import 'custom_text_field.dart';

class MessageSection extends GetView<ContactController> {
  const MessageSection({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ContactController());
    return SizedBox(
      width: 600,
      child: Column(
        mainAxisAlignment: .start,
        crossAxisAlignment: .center,
        children: [
          Header(title: 'Send a message'),
          addVerticalSpace(0.2),
          CustomTextField(
            prefix: Icon(Icons.person),
            controller.name,
            name: 'Name',
          ),
          addVerticalSpace(0.2),
          CustomTextField(
            prefix: Icon(Icons.email),
            controller.email,
            name: 'Email',
          ),
          addVerticalSpace(0.2),
          CustomTextField(controller.message, name: "Message", lines: 8),
          addVerticalSpace(0.2),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: red,
            ),
            child: Text(
              'Send Message',
              style: TextStyle(fontSize: 15, color: white),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:expertgraphweb/global_export.dart';

class ServiceController extends GetxController {
  String selectedCategory = "";
  TextEditingController controller = TextEditingController();

  void serviceSelector(String e) {
    selectedCategory = e;
    update();
  }
}
